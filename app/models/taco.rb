class Taco < ApplicationRecord
  enum meat: { chicken: 0, steak: 1 }
end
