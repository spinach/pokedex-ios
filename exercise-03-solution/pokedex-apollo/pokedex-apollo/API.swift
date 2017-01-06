//  This file was automatically generated and should not be edited.

import Apollo

public final class TrainerQuery: GraphQLQuery {
  public static let operationDefinition =
    "query Trainer($name: String!) {" +
    "  Trainer(name: $name) {" +
    "    id" +
    "    name" +
    "    ownedPokemons {" +
    "      id" +
    "      name" +
    "      url" +
    "    }" +
    "  }" +
    "}"

  public let name: String

  public init(name: String) {
    self.name = name
  }

  public var variables: GraphQLMap? {
    return ["name": name]
  }

  public struct Data: GraphQLMapDecodable {
    public let trainer: Trainer?

    public init(map: GraphQLMap) throws {
      trainer = try map.optionalValue(forKey: "Trainer")
    }

    public struct Trainer: GraphQLMapDecodable {
      public let __typename = "Trainer"
      public let id: GraphQLID
      public let name: String?
      public let ownedPokemons: [OwnedPokemon]?

      public init(map: GraphQLMap) throws {
        id = try map.value(forKey: "id")
        name = try map.optionalValue(forKey: "name")
        ownedPokemons = try map.list(forKey: "ownedPokemons")
      }

      public struct OwnedPokemon: GraphQLMapDecodable {
        public let __typename = "Pokemon"
        public let id: GraphQLID
        public let name: String?
        public let url: String?

        public init(map: GraphQLMap) throws {
          id = try map.value(forKey: "id")
          name = try map.optionalValue(forKey: "name")
          url = try map.optionalValue(forKey: "url")
        }
      }
    }
  }
}