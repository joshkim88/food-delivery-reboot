require 'csv'
require 'pry-byebug'

class BaseRepository
  def initialize(filepath)
    @filepath = filepath
    @next_id = 1
    @elements = []

    parse_csv if File.exist?(filepath)
  end

  def add(new_item)
    new_item.id = @next_id
    @elements << new_item

    store_csv
    @next_id += 1
  end

  def all
    return @elements
  end

  def find(given_id)
    @elements.find do |element|
      element.id == given_id
    end
  end

  private

  def parse_csv
    csv_options = {
      headers: :first_row,
      header_converters: :symbol
    }

    CSV.foreach(@filepath, csv_options) do |row|
      @elements << build_model(row)
    end

    @next_id = @elements.last.id + 1 unless @elements.empty?
  end

  def store_csv
    CSV.open(@filepath, 'wb') do |csv|
      csv << @elements.first.build_header
      @elements.each do |element|
        csv << element.build_data
      end
    end
  end
end









