=begin
MtG API

pull and post events and top 8 decklists

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end
class CardsController < Api::V1::BaseController

  def cards_find_by_colors_get
    # Your code here

    render json: {"message" => "yes, it worked"}
  end

  def cards_find_by_name_get
    # Your code here

    render json: {"message" => "yes, it worked"}
  end

  def index
    # Your code here

    render json: {"message" => "yes, it worked"}
  end

  def show
    # Your code here

    render json: {"message" => "yes, it worked"}
  end
end
