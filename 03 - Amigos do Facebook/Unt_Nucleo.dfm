object dmNucleo: TdmNucleo
  OldCreateOrder = False
  Height = 421
  Width = 728
  object RESTClient1: TRESTClient
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    BaseURL = 'https://graph.facebook.com.br/v2.1'
    Params = <>
    HandleRedirects = True
    UserAgent = 'Embarcadero Conference 2014'
    Left = 160
    Top = 24
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        name = 'access_token'
        Value = 
          'CAACEdEose0cBABuNe3TlmQ1feZCNG0102kargJRfxbTNtSQ9iSjZB2GbuZCFFrf' +
          '8aUcUZCYLIFqfWltRQVW6ZBjCIvKllKx97DCrZCIWqoBUpNmqFajKMywvZAV7zuJ' +
          'dzrvQG8EpGKtR2trjU7gmOgtRDsgzpbsfNNQFotqFH1f2P6IcY0E59HiFaWbsvZA' +
          'vnUAI29ZCgRTeVB4n41PA2cfEe'
      end
      item
        name = 'fields'
        Value = 'name,friends{birthday,name,picture}'
      end>
    Resource = 'me'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 56
    Top = 112
  end
  object RESTResponse1: TRESTResponse
    Left = 264
    Top = 112
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = ClientDataSet1
    FieldDefs = <
      item
        Name = 'name'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'id'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'picture.data.url'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'birthday'
        DataType = ftString
        Size = 20
      end>
    Response = RESTResponse1
    RootElement = 'friends.data'
    NestedElements = True
    Left = 160
    Top = 184
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 160
    Top = 272
  end
  object RESTClient2: TRESTClient
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    BaseURL = 'https://fbcdn-profile-a.akamaihd.net'
    Params = <>
    HandleRedirects = True
    UserAgent = 'Embarcadero Conference 2014'
    Left = 536
    Top = 24
  end
  object RESTRequest2: TRESTRequest
    Client = RESTClient2
    Params = <>
    Response = RESTResponse2
    SynchronizedEvents = False
    Left = 448
    Top = 112
  end
  object RESTResponse2: TRESTResponse
    Left = 624
    Top = 112
  end
  object RESTRequest3: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        name = 'message'
      end
      item
        name = 'access_token'
      end>
    Resource = 'me/feed'
    Response = RESTResponse3
    SynchronizedEvents = False
    Left = 368
    Top = 344
  end
  object RESTResponse3: TRESTResponse
    Left = 472
    Top = 344
  end
end
