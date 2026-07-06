using NUnit.Framework;
using CalcLibrary;

namespace CalcLibrary.Tests
{
    [TestFixture]
    public class SimpleCalculatorTests
    {
        private SimpleCalculator calculator;

        [SetUp]
        public void Setup()
        {
            calculator = new SimpleCalculator();
        }

        [TestCase(10, 20, 30)]
        [TestCase(5, 5, 10)]
        [TestCase(100, 200, 300)]
        [TestCase(-5, 5, 0)]
        public void Addition_ShouldReturnCorrectSum(double a, double b, double expected)
        {
            double result = calculator.Addition(a, b);

            Assert.That(result, Is.EqualTo(expected));
        }
    }
}