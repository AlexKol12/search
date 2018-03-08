describe("search", function() {

  it("[1], 1 => 0-0", function() {
    assert.strictEqual(search([1], 1), '0-0');
  });
  
  it("[2,1], 1 => 1-1", function() {
    assert.strictEqual(search([2,1], 1), '1-1');
  });
  
  it("[3,2,1], 1 => 2-2", function() {
    assert.strictEqual(search([3,2,1], 1), '2-2');
  });
  
  it("[1], 0 => notFind", function() {
    assert.strictEqual(search([1], 0), 'notFind');
  });
  
  it("[0], 1 => notFind", function() {
    assert.strictEqual(search([0], 1), 'notFind');
  });
  
  it("[4,2,4,14,5], 6 => 0-1", function() {
    assert.strictEqual(search([4,2,4,14,5], 6), '0-1');
  });

  it("[2,2,5,3], 7 => 1-2", function() {
    assert.strictEqual(search([2,2,5,3], 7), '1-2');
  });

  it("[2,2,5,3], 12 => 0-3", function() {
    assert.strictEqual(search([2,2,5,3], 12), '0-3');
  });

  it("[2,2,3], 2 => 0-0", function() {
    assert.strictEqual(search([2,2,3], 2), '0-0');
  });

  it("[1,2,3], 2 => 1-1", function() {
    assert.strictEqual(search([1,2,3], 2), '1-1');
  });

  it("[2,3,5,10], 15 => 2-3", function() {
    assert.strictEqual(search([2,3,5,10], 15), '2-3');
  });

  it("[1,1,1,10], 12 => 1-3", function() {
    assert.strictEqual(search([1,1,1,10], 12), '1-3');
  });

  it("[10,1,1,10], 2 => 1-2", function() {
    assert.strictEqual(search([10,1,1,10], 2), '1-2');
  });

  it("[10,10,1000,100,15], 1125 => 1-4", function() {
    assert.strictEqual(search([10,10,1000,100,15], 1125), '1-4');
  });

});