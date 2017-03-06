require 'date'

module SingularApi
  # Model for SbpResponse
  class SbpResponse
    attr_accessor :address

    attr_accessor :city

    attr_accessor :country

    attr_accessor :currency

    attr_accessor :cvv

    attr_accessor :email

    attr_accessor :expirymmyy

    attr_accessor :orderid

    attr_accessor :partnerid

    attr_accessor :partnerkey

    attr_accessor :payeefirstname

    attr_accessor :payeeid

    attr_accessor :payeelastname

    attr_accessor :payeename

    attr_accessor :paymentmode

    attr_accessor :profileid

    attr_accessor :responsecode

    attr_accessor :responsemessage

    attr_accessor :responsestatus

    attr_accessor :routingnumber

    attr_accessor :state

    attr_accessor :surchargeamount

    attr_accessor :tokenizedaccountnumber

    attr_accessor :transactionamount

    attr_accessor :transactionid

    attr_accessor :transactionreference

    attr_accessor :udfield1

    attr_accessor :udfield2

    attr_accessor :udfield3

    attr_accessor :zip

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'address' => :'address',
        
        :'city' => :'city',
        
        :'country' => :'country',
        
        :'currency' => :'currency',
        
        :'cvv' => :'cvv',
        
        :'email' => :'email',
        
        :'expirymmyy' => :'expirymmyy',
        
        :'orderid' => :'orderid',
        
        :'partnerid' => :'partnerid',
        
        :'partnerkey' => :'partnerkey',
        
        :'payeefirstname' => :'payeefirstname',
        
        :'payeeid' => :'payeeid',
        
        :'payeelastname' => :'payeelastname',
        
        :'payeename' => :'payeename',
        
        :'paymentmode' => :'paymentmode',
        
        :'profileid' => :'profileid',
        
        :'responsecode' => :'responsecode',
        
        :'responsemessage' => :'responsemessage',
        
        :'responsestatus' => :'responsestatus',
        
        :'routingnumber' => :'routingnumber',
        
        :'state' => :'state',
        
        :'surchargeamount' => :'surchargeamount',
        
        :'tokenizedaccountnumber' => :'tokenizedaccountnumber',
        
        :'transactionamount' => :'transactionamount',
        
        :'transactionid' => :'transactionid',
        
        :'transactionreference' => :'transactionreference',
        
        :'udfield1' => :'udfield1',
        
        :'udfield2' => :'udfield2',
        
        :'udfield3' => :'udfield3',
        
        :'zip' => :'zip'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'address' => :'String',
        :'city' => :'String',
        :'country' => :'String',
        :'currency' => :'String',
        :'cvv' => :'String',
        :'email' => :'String',
        :'expirymmyy' => :'String',
        :'orderid' => :'String',
        :'partnerid' => :'String',
        :'partnerkey' => :'String',
        :'payeefirstname' => :'String',
        :'payeeid' => :'String',
        :'payeelastname' => :'String',
        :'payeename' => :'String',
        :'paymentmode' => :'String',
        :'profileid' => :'String',
        :'responsecode' => :'String',
        :'responsemessage' => :'String',
        :'responsestatus' => :'String',
        :'routingnumber' => :'String',
        :'state' => :'String',
        :'surchargeamount' => :'String',
        :'tokenizedaccountnumber' => :'String',
        :'transactionamount' => :'String',
        :'transactionid' => :'String',
        :'transactionreference' => :'String',
        :'udfield1' => :'String',
        :'udfield2' => :'String',
        :'udfield3' => :'String',
        :'zip' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'address']
        self.address = attributes[:'address']
      end
      
      if attributes[:'city']
        self.city = attributes[:'city']
      end
      
      if attributes[:'country']
        self.country = attributes[:'country']
      end
      
      if attributes[:'currency']
        self.currency = attributes[:'currency']
      end
      
      if attributes[:'cvv']
        self.cvv = attributes[:'cvv']
      end
      
      if attributes[:'email']
        self.email = attributes[:'email']
      end
      
      if attributes[:'expirymmyy']
        self.expirymmyy = attributes[:'expirymmyy']
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
      
      if attributes[:'payeefirstname']
        self.payeefirstname = attributes[:'payeefirstname']
      end
      
      if attributes[:'payeeid']
        self.payeeid = attributes[:'payeeid']
      end
      
      if attributes[:'payeelastname']
        self.payeelastname = attributes[:'payeelastname']
      end
      
      if attributes[:'payeename']
        self.payeename = attributes[:'payeename']
      end
      
      if attributes[:'paymentmode']
        self.paymentmode = attributes[:'paymentmode']
      end
      
      if attributes[:'profileid']
        self.profileid = attributes[:'profileid']
      end
      
      if attributes[:'responsecode']
        self.responsecode = attributes[:'responsecode']
      end
      
      if attributes[:'responsemessage']
        self.responsemessage = attributes[:'responsemessage']
      end
      
      if attributes[:'responsestatus']
        self.responsestatus = attributes[:'responsestatus']
      end
      
      if attributes[:'routingnumber']
        self.routingnumber = attributes[:'routingnumber']
      end
      
      if attributes[:'state']
        self.state = attributes[:'state']
      end
      
      if attributes[:'surchargeamount']
        self.surchargeamount = attributes[:'surchargeamount']
      end
      
      if attributes[:'tokenizedaccountnumber']
        self.tokenizedaccountnumber = attributes[:'tokenizedaccountnumber']
      end
      
      if attributes[:'transactionamount']
        self.transactionamount = attributes[:'transactionamount']
      end
      
      if attributes[:'transactionid']
        self.transactionid = attributes[:'transactionid']
      end
      
      if attributes[:'transactionreference']
        self.transactionreference = attributes[:'transactionreference']
      end
      
      if attributes[:'udfield1']
        self.udfield1 = attributes[:'udfield1']
      end
      
      if attributes[:'udfield2']
        self.udfield2 = attributes[:'udfield2']
      end
      
      if attributes[:'udfield3']
        self.udfield3 = attributes[:'udfield3']
      end
      
      if attributes[:'zip']
        self.zip = attributes[:'zip']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address == o.address &&
          city == o.city &&
          country == o.country &&
          currency == o.currency &&
          cvv == o.cvv &&
          email == o.email &&
          expirymmyy == o.expirymmyy &&
          orderid == o.orderid &&
          partnerid == o.partnerid &&
          partnerkey == o.partnerkey &&
          payeefirstname == o.payeefirstname &&
          payeeid == o.payeeid &&
          payeelastname == o.payeelastname &&
          payeename == o.payeename &&
          paymentmode == o.paymentmode &&
          profileid == o.profileid &&
          responsecode == o.responsecode &&
          responsemessage == o.responsemessage &&
          responsestatus == o.responsestatus &&
          routingnumber == o.routingnumber &&
          state == o.state &&
          surchargeamount == o.surchargeamount &&
          tokenizedaccountnumber == o.tokenizedaccountnumber &&
          transactionamount == o.transactionamount &&
          transactionid == o.transactionid &&
          transactionreference == o.transactionreference &&
          udfield1 == o.udfield1 &&
          udfield2 == o.udfield2 &&
          udfield3 == o.udfield3 &&
          zip == o.zip
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [address, city, country, currency, cvv, email, expirymmyy, orderid, partnerid, partnerkey, payeefirstname, payeeid, payeelastname, payeename, paymentmode, profileid, responsecode, responsemessage, responsestatus, routingnumber, state, surchargeamount, tokenizedaccountnumber, transactionamount, transactionid, transactionreference, udfield1, udfield2, udfield3, zip].hash
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
