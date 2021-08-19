desc 'Outputting top 5 file formats in folder'
namespace :custom_command do
  task :top_five, [:path] do |_t, args|
    @result = Hash.new(0)
    parse_folder(args[:path])
    pretty_output(@result, args[:path])
  end
end

def parse_folder(args)
  Dir.children(args).sort.each do |file|
    next if file[0] == '.' # skipping files with . as first char

    possible_folder = args + '/' + file
    parse_folder(possible_folder) if Dir.exist?(possible_folder)
    file_ext = define_extension(file)
    @result[file_ext] += 1 unless file_ext.nil?
  end
end

def define_extension(file)
  result = file.dup.chars
  result.delete_if { |char| char != '.' ? true : break }
  result.inject(:+)
end

def pretty_output(hash, folder_path)
  puts "Top 5 file formats in #{folder_path} folder"
  hash.sort_by { |k, v| v }.reverse[0...5].to_h.each_pair { |key, value| puts key.ljust(15) + value.to_s }
end
 