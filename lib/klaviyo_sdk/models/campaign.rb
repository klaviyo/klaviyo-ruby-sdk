=begin
#Klaviyo API

#Empowering creators to own their destiny

The version of the OpenAPI document: 2022.03.29

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module Klaviyo
  class Campaign
    attr_accessor :object

    attr_accessor :id

    attr_accessor :name

    attr_accessor :subject

    attr_accessor :from_email

    attr_accessor :from_name

    attr_accessor :lists

    attr_accessor :excluded_lists

    attr_accessor :status

    attr_accessor :status_id

    attr_accessor :status_label

    attr_accessor :sent_at

    attr_accessor :send_time

    attr_accessor :created

    attr_accessor :updated

    attr_accessor :num_recipients

    attr_accessor :campaign_type

    attr_accessor :is_segmented

    attr_accessor :message_type

    attr_accessor :template

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'object' => :'object',
        :'id' => :'id',
        :'name' => :'name',
        :'subject' => :'subject',
        :'from_email' => :'from_email',
        :'from_name' => :'from_name',
        :'lists' => :'lists',
        :'excluded_lists' => :'excluded_lists',
        :'status' => :'status',
        :'status_id' => :'status_id',
        :'status_label' => :'status_label',
        :'sent_at' => :'sent_at',
        :'send_time' => :'send_time',
        :'created' => :'created',
        :'updated' => :'updated',
        :'num_recipients' => :'num_recipients',
        :'campaign_type' => :'campaign_type',
        :'is_segmented' => :'is_segmented',
        :'message_type' => :'message_type',
        :'template' => :'template'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'object' => :'String',
        :'id' => :'String',
        :'name' => :'String',
        :'subject' => :'String',
        :'from_email' => :'String',
        :'from_name' => :'String',
        :'lists' => :'Array<CampaignLists>',
        :'excluded_lists' => :'Array<CampaignLists>',
        :'status' => :'String',
        :'status_id' => :'Integer',
        :'status_label' => :'String',
        :'sent_at' => :'Time',
        :'send_time' => :'Time',
        :'created' => :'Time',
        :'updated' => :'Time',
        :'num_recipients' => :'Integer',
        :'campaign_type' => :'String',
        :'is_segmented' => :'Boolean',
        :'message_type' => :'String',
        :'template' => :'Hash<String, Object>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'sent_at',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Klaviyo::Campaign` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Klaviyo::Campaign`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'from_email')
        self.from_email = attributes[:'from_email']
      end

      if attributes.key?(:'from_name')
        self.from_name = attributes[:'from_name']
      end

      if attributes.key?(:'lists')
        if (value = attributes[:'lists']).is_a?(Array)
          self.lists = value
        end
      end

      if attributes.key?(:'excluded_lists')
        if (value = attributes[:'excluded_lists']).is_a?(Array)
          self.excluded_lists = value
        end
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'status_id')
        self.status_id = attributes[:'status_id']
      end

      if attributes.key?(:'status_label')
        self.status_label = attributes[:'status_label']
      end

      if attributes.key?(:'sent_at')
        self.sent_at = attributes[:'sent_at']
      end

      if attributes.key?(:'send_time')
        self.send_time = attributes[:'send_time']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.key?(:'num_recipients')
        self.num_recipients = attributes[:'num_recipients']
      end

      if attributes.key?(:'campaign_type')
        self.campaign_type = attributes[:'campaign_type']
      end

      if attributes.key?(:'is_segmented')
        self.is_segmented = attributes[:'is_segmented']
      end

      if attributes.key?(:'message_type')
        self.message_type = attributes[:'message_type']
      end

      if attributes.key?(:'template')
        if (value = attributes[:'template']).is_a?(Hash)
          self.template = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@status_id.nil? && @status_id > 13
        invalid_properties.push('invalid value for "status_id", must be smaller than or equal to 13.')
      end

      if !@status_id.nil? && @status_id < 0
        invalid_properties.push('invalid value for "status_id", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      status_validator = EnumAttributeValidator.new('String', ["draft", "sent", "cancelled", "queued", "cancelled_no_recipients_smart_sending", "cancelled_no_recipients_scheduling", "cancelled_account_disabled", "scheduling", "sending", "sending_timezones", "variations_sent", "preparing_to_schedule", "cancelled_internal_error"])
      return false unless status_validator.valid?(@status)
      return false if !@status_id.nil? && @status_id > 13
      return false if !@status_id.nil? && @status_id < 0
      status_label_validator = EnumAttributeValidator.new('String', ["Scheduled", "Sent", "Draft", "Cancelled", "Adding Recipients", "Sending", "Variations Sent", "Sending Segments", "Cancelled: Smart Sending", "Preparing to send", "Cancelled: Account Disabled", "Cancelled: No Recipients", "Preparing to schedule", "Cancelled: Internal Error"])
      return false unless status_label_validator.valid?(@status_label)
      campaign_type_validator = EnumAttributeValidator.new('String', ["Timezone", "REGULAR", "A/B Content", "A/B Send Time", "Batch", "A/B Segments by Send Time", "A/B Segments by Send Time (STO)", "SMS Segments by Message Per Second"])
      return false unless campaign_type_validator.valid?(@campaign_type)
      message_type_validator = EnumAttributeValidator.new('String', ["email", "sms", "push"])
      return false unless message_type_validator.valid?(@message_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["draft", "sent", "cancelled", "queued", "cancelled_no_recipients_smart_sending", "cancelled_no_recipients_scheduling", "cancelled_account_disabled", "scheduling", "sending", "sending_timezones", "variations_sent", "preparing_to_schedule", "cancelled_internal_error"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] status_id Value to be assigned
    def status_id=(status_id)
      if !status_id.nil? && status_id > 13
        fail ArgumentError, 'invalid value for "status_id", must be smaller than or equal to 13.'
      end

      if !status_id.nil? && status_id < 0
        fail ArgumentError, 'invalid value for "status_id", must be greater than or equal to 0.'
      end

      @status_id = status_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status_label Object to be assigned
    def status_label=(status_label)
      validator = EnumAttributeValidator.new('String', ["Scheduled", "Sent", "Draft", "Cancelled", "Adding Recipients", "Sending", "Variations Sent", "Sending Segments", "Cancelled: Smart Sending", "Preparing to send", "Cancelled: Account Disabled", "Cancelled: No Recipients", "Preparing to schedule", "Cancelled: Internal Error"])
      unless validator.valid?(status_label)
        fail ArgumentError, "invalid value for \"status_label\", must be one of #{validator.allowable_values}."
      end
      @status_label = status_label
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] campaign_type Object to be assigned
    def campaign_type=(campaign_type)
      validator = EnumAttributeValidator.new('String', ["Timezone", "REGULAR", "A/B Content", "A/B Send Time", "Batch", "A/B Segments by Send Time", "A/B Segments by Send Time (STO)", "SMS Segments by Message Per Second"])
      unless validator.valid?(campaign_type)
        fail ArgumentError, "invalid value for \"campaign_type\", must be one of #{validator.allowable_values}."
      end
      @campaign_type = campaign_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] message_type Object to be assigned
    def message_type=(message_type)
      validator = EnumAttributeValidator.new('String', ["email", "sms", "push"])
      unless validator.valid?(message_type)
        fail ArgumentError, "invalid value for \"message_type\", must be one of #{validator.allowable_values}."
      end
      @message_type = message_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          object == o.object &&
          id == o.id &&
          name == o.name &&
          subject == o.subject &&
          from_email == o.from_email &&
          from_name == o.from_name &&
          lists == o.lists &&
          excluded_lists == o.excluded_lists &&
          status == o.status &&
          status_id == o.status_id &&
          status_label == o.status_label &&
          sent_at == o.sent_at &&
          send_time == o.send_time &&
          created == o.created &&
          updated == o.updated &&
          num_recipients == o.num_recipients &&
          campaign_type == o.campaign_type &&
          is_segmented == o.is_segmented &&
          message_type == o.message_type &&
          template == o.template
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [object, id, name, subject, from_email, from_name, lists, excluded_lists, status, status_id, status_label, sent_at, send_time, created, updated, num_recipients, campaign_type, is_segmented, message_type, template].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Klaviyo.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
