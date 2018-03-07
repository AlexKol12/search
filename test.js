describe("extractCurrencyValue", function() {

  it("[1], 1", function() {
    assert.strictEqual(search([1], 1), '0-0');
  });
  
  it("[1], 0", function() {
    assert.strictEqual(search([1], 0), 'NaN');
  });

  it("[1,2,3], 1", function() {
    assert.strictEqual(search([1,2,1], 1), '0-0,2-2');
  });

  it("[1,2,3], 2", function() {
    assert.strictEqual(search([1,2,3], 2), '1-1');
  });

  it("[2,2,3], 3", function() {
    assert.strictEqual(search([2,2,3], 3), '2-2');
  });

  it("[2,2,5,3], 12", function() {
    assert.strictEqual(search([2,2,5,3], 12), '0-3');
  });

  it("[2,2,5,3], 7", function() {
    assert.strictEqual(search([2,2,5,3], 7), '1-2');
  });

  it("[2,2,2,2], 2", function() {
    assert.strictEqual(search([2,2,2,2], 2), '0-0,1-1,2-2,3-3');
  });

  it("[2,23,2,21], 22", function() {
    assert.strictEqual(search([2,23,2,21], 22), 'NaN');
  });

});