Rails.application.routes.draw do
get"/players" => "players#index"
get"/players/:id" => "players#show"
post"players" => "players#create"
patch"/players/:id" => "players#update"
delete"/players/:id" => "players#destroy"
end
