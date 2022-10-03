class Kt < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '36.0以下'},
    { id: 3, name: '36.1'},
    { id: 4, name: '36.2'},
    { id: 5, name: '36.3'},
    { id: 6, name: '36.4'},
    { id: 7, name: '36.5'},
    { id: 8, name: '36.6'},
    { id: 9, name: '36.7'},
    { id: 10, name: '36.8'},
    { id: 11, name: '36.9'},
    { id: 12, name: '37.0'},
    { id: 13, name: '37.1'},
    { id: 14, name: '37.2'},
    { id: 15, name: '37.3'},
    { id: 16, name: '37.4'},
    { id: 17, name: '37.5'},
    { id: 18, name: '37.6'},
    { id: 19, name: '37.7'},
    { id: 20, name: '37.8'},
    { id: 21, name: '37.9'},
    { id: 22, name: '38.0以上'}
  ]

  include ActiveHash::Associations
  has_many :kaigos

  end