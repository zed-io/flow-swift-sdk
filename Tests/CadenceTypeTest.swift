@testable import BigInt
@testable import Flow
import XCTest

final class CadenceTypeTests: XCTestCase {
    func testIntType() throws {
        let jsonString = """
        {
           "type": "Int",
           "value": "1"
        }
        """
        let argument = Flow.Argument(value: .int(value: 1))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toInt(), 1)
    }

    func testUIntType() throws {
        let jsonString = """
        {
           "type": "UInt",
           "value": "1"
        }
        """
        let argument = Flow.Argument(value: .uint(value: 1))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toUInt(), 1)
    }

    func testInt8Type() throws {
        let jsonString = """
        {
           "type": "Int8",
           "value": "8"
        }
        """
        let argument = Flow.Argument(value: .int8(value: 8))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toInt8(), 8)
    }

    func testUInt8Type() throws {
        let jsonString = """
        {
           "type": "UInt8",
           "value": "8"
        }
        """
        let argument = Flow.Argument(value: .uint8(value: 8))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toUInt8(), 8)
    }

    func testInt16Type() throws {
        let jsonString = """
        {
           "type": "Int16",
           "value": "16"
        }
        """
        let argument = Flow.Argument(value: .int16(value: 16))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toInt16(), 16)
    }

    func testUInt16Type() throws {
        let jsonString = """
        {
           "type": "UInt16",
           "value": "16"
        }
        """
        let argument = Flow.Argument(value: .uint16(value: 16))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toUInt16(), 16)
    }

    func testInt32Type() throws {
        let jsonString = """
        {
           "type": "Int32",
           "value": "32"
        }
        """
        let argument = Flow.Argument(value: .int32(value: 32))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toInt32(), 32)
    }

    func testUInt32Type() throws {
        let jsonString = """
        {
           "type": "UInt32",
           "value": "32"
        }
        """
        let argument = Flow.Argument(value: .uint32(value: 32))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toUInt32(), 32)
    }

    func testInt64Type() throws {
        let jsonString = """
        {
           "type": "Int64",
           "value": "64"
        }
        """
        let argument = Flow.Argument(value: .int64(value: 64))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toInt64(), 64)
    }

    func testUInt64Type() throws {
        let jsonString = """
        {
           "type": "UInt64",
           "value": "64"
        }
        """
        let argument = Flow.Argument(value: .uint64(value: 64))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toUInt64(), 64)
    }

    func testInt128Type() throws {
        let jsonString = """
        {
           "type": "Int128",
           "value": "128"
        }
        """
        let argument = Flow.Argument(value: .int128(value: 128))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toInt128(), BigInt(128))
    }

    func testUInt128Type() throws {
        let jsonString = """
        {
           "type": "UInt128",
           "value": "128"
        }
        """
        let argument = Flow.Argument(value: .uint128(value: 128))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toUInt128(), BigUInt(128))
    }

    func testInt256Type() throws {
        let jsonString = """
        {
           "type": "Int256",
           "value": "256"
        }
        """
        let argument = Flow.Argument(value: .int256(value: 256))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toInt256(), BigInt(256))
    }

    func testUInt256Type() throws {
        let jsonString = """
        {
           "type": "UInt256",
           "value": "256"
        }
        """
        let argument = Flow.Argument(value: .uint256(value: 256))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toUInt256(), BigUInt(256))
    }

    func testWord8Type() throws {
        let jsonString = """
        {
           "type": "Word8",
           "value": "8"
        }
        """
        let argument = Flow.Argument(value: .word8(value: 8))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toWord8(), 8)
    }

    func testWord16Type() throws {
        let jsonString = """
        {
           "type": "Word16",
           "value": "16"
        }
        """
        let argument = Flow.Argument(value: .word16(value: 16))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toWord16(), 16)
    }

    func testWord32Type() throws {
        let jsonString = """
        {
           "type": "Word32",
           "value": "32"
        }
        """
        let argument = Flow.Argument(value: .word32(value: 32))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toWord32(), 32)
    }

    func testWord64Type() throws {
        let jsonString = """
        {
           "type": "Word64",
           "value": "64"
        }
        """
        let argument = Flow.Argument(value: .word64(value: 64))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toWord64(), 64)
    }

    func testFix64Type() throws {
        let jsonString = """
        {
           "type": "Fix64",
           "value": "-0.64"
        }
        """
        let argument = Flow.Argument(value: .fix64(value: -0.64))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toFix64(), -0.64)
    }

    func testUFix64Type() throws {
        let jsonString = """
        {
           "type": "UFix64",
           "value": "0.64"
        }
        """
        let argument = Flow.Argument(value: .ufix64(value: 0.64))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toUFix64(), 0.64)
    }

    func testUndfinedType() throws {
        let jsonString = """
        {
           "type": "Enum",
           "value": "1"
        }
        """
        let argument = Flow.Argument(value: .unsupported)
        let jsonData = jsonString.data(using: .utf8)!
        let result = try JSONDecoder().decode(Flow.Argument.self, from: jsonData)
        XCTAssertEqual(result, argument)
    }

    func testStringType() throws {
        let jsonString = """
        {
           "type": "String",
           "value": "absolutely"
        }
        """
        let argument = Flow.Argument(value: .string(value: "absolutely"))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toString(), "absolutely")
    }

    func testBoolType() throws {
        let jsonString = """
        {
           "type": "Bool",
           "value": true
        }
        """
        let argument = Flow.Argument(value: .bool(value: true))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toBool(), true)
    }

    func testVoidType() throws {
        let jsonString = """
        {
           "type": "Void",
           "value": null
        }
        """
        let argument = Flow.Argument(value: .void)
        _ = try! verifyJson(jsonString: jsonString, argument: argument)
    }

    func testAddressType() throws {
        let jsonString = """
        {
           "type": "Address",
           "value": "0x4eb165aa383fd6f9"
        }
        """
        let argument = Flow.Argument(value: .address(value: .init(hex: "0x4eb165aa383fd6f9")))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toAddress(), Flow.Address(hex: "0x4eb165aa383fd6f9"))
    }

    func testCharacterType() throws {
        let jsonString = """
        {
           "type": "Character",
           "value": "c"
        }
        """
        let argument = Flow.Argument(value: .character(value: "c"))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toCharacter(), "c")
    }

    func testOptionalType() throws {
        let jsonString = """
        {
           "type":"Optional",
           "value":{
              "type":"String",
              "value":"test"
           }
        }
        """
        let value = Flow.Argument(value: .string(value: "test"))
        let argument = Flow.Argument(value: .optional(value: value))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toOptional(), value)
    }

    func testReferenceType() throws {
        let jsonString = """
        {
           "type":"Reference",
           "value":{
              "address":"0x01",
              "type":"0x01.CryptoKitty"
           }
        }
        """

        let value = Flow.Argument.Reference(address: "0x01", type: "0x01.CryptoKitty")
        let argument = Flow.Argument(value: .reference(value: value))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toReference(), value)
    }

    func testDictionaryType() throws {
        let jsonString = """
        {
           "type":"Dictionary",
           "value":[
              {
                 "key":{
                    "type":"Int",
                    "value":"1"
                 },
                 "value":{
                    "type":"String",
                    "value":"one"
                 }
              },
              {
                 "key":{
                    "type":"Int",
                    "value":"2"
                 },
                 "value":{
                    "type":"String",
                    "value":"two"
                 }
              }
           ]
        }
        """

        let value: [Flow.Argument.Dictionary] = [.init(key: .init(value: .int(value: 1)), value: .init(value: .string(value: "one"))),
                                                 .init(key: .init(value: .int(value: 2)), value: .init(value: .string(value: "two")))]
        let argument = Flow.Argument(value: .dictionary(value: value))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toDictionary(), value)
    }

    func testArrayType() throws {
        let jsonString = """
        {
           "type":"Array",
           "value":[
              {
                 "type":"String",
                 "value":"test1"
              },
              {
                 "type":"String",
                 "value":"test2"
              }
           ]
        }
        """

        let value: [Flow.Argument] = [.init(value: .string(value: "test1")), .init(value: .string(value: "test2"))]
        let argument = Flow.Argument(value: .array(value: value))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toArray(), value)
    }

    func testStructType() throws {
        let jsonString = """
        {
           "type":"Struct",
           "value":{
              "id":"0x01.Jeffysaur",
              "fields":[
                 {
                    "name":"Jeffysaur_Name",
                    "value":{
                       "type":"String",
                       "value":"Mr Jeff The Dinosaur"
                    }
                 }
              ]
           }
        }
        """
        let value: Flow.Argument.Event = .init(id: "0x01.Jeffysaur",
                                               fields: [.init(name: "Jeffysaur_Name",
                                                              value: .init(value: .string(value: "Mr Jeff The Dinosaur")))])
        let argument = Flow.Argument(value: .struct(value: value))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toStruct(), value)
    }

    func testEventType() throws {
        let jsonString = """
        {
           "type":"Event",
           "value":{
              "id":"0x01.JeffWroteSomeJS",
              "fields":[
                 {
                    "name":"wasTheCodeClean?",
                    "value":{
                       "type":"String",
                       "value":"absolutely"
                    }
                 }
              ]
           }
        }
        """

        let value: Flow.Argument.Event = .init(id: "0x01.JeffWroteSomeJS",
                                               fields: [.init(name: "wasTheCodeClean?",
                                                              value: .init(value: .string(value: "absolutely")))])
        let argument = Flow.Argument(value: .event(value: value))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toEvent(), value)
    }

    func testResourceType() throws {
        let jsonString = """
        {
           "type":"Resource",
           "value":{
              "id":"0x01.Jeffysaur",
              "fields":[
                 {
                    "name":"Jeffysaur_Name",
                    "value":{
                       "type":"String",
                       "value":"Mr Jeff The Dinosaur"
                    }
                 }
              ]
           }
        }
        """

        let value: Flow.Argument.Event = .init(id: "0x01.Jeffysaur",
                                               fields: [.init(name: "Jeffysaur_Name",
                                                              value: .init(value: .string(value: "Mr Jeff The Dinosaur")))])
        let argument = Flow.Argument(value: .resource(value: value))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toResource(), value)
    }

    func testPathType() throws {
        let jsonString = """
        {
           "type":"Path",
           "value":{
              "domain":"public",
              "identifier":"zelosAccountingTokenReceiver"
           }
        }
        """

        let value: Flow.Argument.Path = .init(domain: "public", identifier: "zelosAccountingTokenReceiver")
        let argument = Flow.Argument(value: .path(value: value))
        let result = try! verifyJson(jsonString: jsonString, argument: argument)
        XCTAssertEqual(result.value.toPath(), value)
    }

    // MARK: - Util Method

    func verifyJson(jsonString: String, argument: Flow.Argument) throws -> Flow.Argument {
        // Test Decode
        let jsonData = jsonString.data(using: .utf8)!
        let result = try JSONDecoder().decode(Flow.Argument.self, from: jsonData)
        XCTAssertEqual(result, argument)

        // Test Encode
        let encoder = JSONEncoder()
        let encoded = try encoder.encode(argument)

        XCTAssertEqual(encoded, formatJsonString(jsonString: jsonString))
        return result
    }

    func formatJsonString(jsonString: String) -> Data? {
        let jsonData = jsonString.data(using: .utf8)!
        let object = try! JSONSerialization.jsonObject(with: jsonData)
        return try! JSONSerialization.data(withJSONObject: object, options: [])
    }
}
