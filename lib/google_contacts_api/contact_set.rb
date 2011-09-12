module GoogleContactsApi
  class ContactSet < GoogleContactsApi::ResultSet
    # Populate from a response that contains contacts
    def initialize(response_body, api = nil)
      super
      @results = []
      @results = @parsed.feed.entry.map { |e| GoogleContactsApi::Contact.new(e, nil, api) } unless @parsed.nil? || @parsed.feed.nil? || @parsed.feed.entry.nil?
    end
  end
end