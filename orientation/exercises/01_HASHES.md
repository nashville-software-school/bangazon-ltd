# Ruby Stock Hash

## Setup

```
mkdir -p ~/workspace/ruby/exercises/hashes && cd $_
touch stocks.rb
```

## References



## Instructions

A block of publicly traded stock has a variety of attributes, we'll look at a few of them. A stock has a ticker symbol and a company name. Create a simple dictionary with ticker symbols and company names.

##### Example

```ruby
stock_dict = { 'GM' => 'General Motors',
 'CAT' => 'Caterpillar', 'EK' => "Eastman Kodak" }
```

Create a simple list of blocks of stock. These could be arrays with ticker symbols, number of shares, dates and price.

##### Example

```ruby
purchases = [ [ 'GE', 100, '10-sep-2001', 48 ],
 [ 'CAT', 100, '1-apr-1999', 24 ],
 [ 'GE', 200, '1-jul-1998', 56 ] ]
```

Create a purchase history report that computes the full purchase price (shares times dollars) for each block of stock and uses the `stock_dict` to look up the full company name. This is the basic relational database join algorithm between two tables.

Create a second purchase summary that which accumulates total investment by ticker symbol. In the above sample data, there are two blocks of GE. These can easily be combined by creating a hash where the key is the ticker and the value is the list of blocks purchased. The program makes one pass through the data to create the hash. A pass through the hash can then create a report showing each ticker symbol and all blocks of stock.
