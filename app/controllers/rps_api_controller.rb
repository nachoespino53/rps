require 'rest-client'

class RpsApiController < ApplicationController

    def create
        @result = compare_throw(params["select"])
        render :index, result: @result
    end



    private

    # This method will handle the API, returning false if the API fails, or one of three options: R, P, S
    def get_throw
        response = RestClient.get('https://5eddt4q9dk.execute-api.us-east-1.amazonaws.com/rps-stage/throw')
        parsed_response = JSON.parse(response)
        # Checking for valid data, if there is no statusCode, then return false
        if parsed_response["statusCode"] == 200
            return JSON.parse(parsed_response['body'])
        else
            return false
        end
    end

    # Logic for comparing
    # There are some "code smells", as some repeated lines could be brought out
    def compare_throw(selection)
        api_throw = get_throw
        # If there is a truthy api_throw vaiable, then process the logis, if not, return false
        if api_throw
            # Very first thing I want to do is check for ties
            if selection.downcase == api_throw.downcase
                return ["tied", api_throw]
            # Then check for the rest of the possibilities
            else
                case api_throw.downcase
                when "scissors"
                    if selection.downcase == "rock"
                        return ["win", api_throw] # I would like to bring these lines out as they are repeating
                    else
                        return ['lose', api_throw] # I would like to bring these lines out as they are repeating
                    end
                when "rock"
                    if selection.downcase == "paper"
                        return ["win", api_throw] # I would like to bring these lines out as they are repeating
                    else
                        return ['lose', api_throw] # I would like to bring these lines out as they are repeating
                    end
                when "paper"
                    if selection.downcase == "scissors"
                        return ["win", api_throw] # I would like to bring these lines out as they are repeating
                    else
                        return ['lose', api_throw] # I would like to bring these lines out as they are repeating
                    end
                else
                    return ["Neither Won or Lost", api_throw]
                end
            end
        else
            return false
        end
    end
end
