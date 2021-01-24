class Methods
    include HTTParty
    #debug_output $stdout
    base_uri URL_BASE
    
    def initialize()
        $mock_api = MockApi.new()
    end

    def post_person()
        body = self.payload()
        @options = {
            body: body
        }
        self.class.post("/person", @options)
    end

    def patch_person_by_id(id)
        body = self.payload_name
        @options = {
            body: body
        }
        self.class.patch("/person/"+"#{id}", @options)
    end

    def put_person_by_id(id)
        body = self.payload
        @options = {
            body: body
        }
        self.class.put("/person/"+"#{id}", @options)
    end

    def delete_person_by_id(id)
        self.class.delete("/person/"+"#{id}")
    end

    def get_persons()
        self.class.get("/person")
    end

    def get_person_by_id(id)
        self.class.get("/person/"+"#{id}")
    end

    def payload()
        return {
            name:           $mock_api.name,     
            city: 			$mock_api.city,
            state: 		    $mock_api.state,
        }
    end

    def payload_name()
        return {
            name:           $mock_api.name
        }
    end
end