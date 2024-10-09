class ConvertLength
  def self.convert(convert_params)
    case convert_params[:converted_unit]
    when 'meters'
      convert_to_meters(original_length: convert_params[:original_length].to_i, original_unit: convert_params[:original_unit])
    when 'feet'
      convert_to_feet(original_length: convert_params[:original_length].to_i, original_unit: convert_params[:original_unit])
    when 'inches'
      convert_to_inches(original_length: convert_params[:original_length].to_i, original_unit: convert_params[:original_unit])
    else
      raise "Unknown unit: #{original_unit}"
    end
  end

  def self.convert_to_meters(original_length:, original_unit:)
    case original_unit
    when 'meters'
      original_length
    when 'feet'
      original_length * 0.3048
    when 'inches'
      original_length * 0.0254
    else
      raise "Unknown unit: #{original_unit}"
    end
  end

  def self.convert_to_inches(original_length:, original_unit:)
    case original_unit
    when 'meters'
      original_length / 0.0254
    when 'feet'
      original_length / 0.0833333
    when 'inches'
      original_length
    else
      raise "Unknown unit: #{original_unit}"
    end
  end

  def self.convert_to_feet(original_length:, original_unit:)
    case original_unit
    when 'meters'
      original_length / 0.3048
    when 'feet'
      original_length
    when 'inches'
      original_length / 12
    else
      raise "Unknown unit: #{original_unit}"
    end
  end
end
