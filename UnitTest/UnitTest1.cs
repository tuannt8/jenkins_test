namespace UnitTest
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
        }

        [TestMethod]
        public void TestFail()
        {
            Assert.Fail();
        }

        [TestMethod]
        public void TestFailAgain()
        {
            Assert.Fail();
        }
    }
}