require 'date'

module SingularApi
  # Model for SbpQueryRequest
  class SbpQueryRequest
    attr_accessor :fromdate

    attr_accessor :orderid

    attr_accessor :partnerid

    attr_accessor :partnerkey

    attr_accessor :payeeid

    attr_accessor :profileid

    attr_accessor :todate

    attr_accessor :transactionreference

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'fromdate' => :'fromdate',
        
        :'orderid' => :'orderid',
        
        :'partnerid' => :'partnerid',
        
        :'partnerkey' => :'partnerkey',
        
        :'payeeid' => :'payeeid',
        
        :'profileid' => :'profileid',
        
        :'todate' => :'todate',
        
        :'transactionreference' => :'transactionreference'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'fromdate' => :'String',
        :'orderid' => :'String',
        :'partnerid' => :'String',
        :'partnerkey' => :'String',
        :'payeeid' => :'String',
        :'profileid' => :'String',
        :'todate' => :'String',
        :'transactionreference' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'fromdate']
        self.fromdate = attributes[:'fromdate']
      end
      
      if attributes[:'orderid']
        self.orderid = attributes[:'orderid']
      end
      
      if attributes[:'partnerid']
        self.partnerid = attributes[:'partnerid']
      end
      
      if attributes[:'partnerkey']
        self.partnerkey = attributes[:'partnerkey']
      end
      
      if attributes[:'payeeid']
        self.payeeid = attributes[:'payeeid']
      end
      
      if attributes[:'profileid']
        self.profileid = attributes[:'profileid']
      end
      
      if attributes[:'todate']
        self.todate = attributes[:'todate']
      end
      
      if attributes[:'transactionreference']
        self.transactionreference = attributes[:'transactionreference']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          fromdate == o.fromdate &&
          orderid == o.orderid &&
          partnerid == o.partnerid &&
          partnerkey == o.partnerkey &&
          payeeid == o.payeeid &&
          profileid == o.profileid &&
          todate == o.todate &&
          transactionreference == o.transactionreference
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [fromdate, orderid, partnerid, partnerkey, payeeid, profileid, todate, transactionreference].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        _model = SingularApi.const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
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
