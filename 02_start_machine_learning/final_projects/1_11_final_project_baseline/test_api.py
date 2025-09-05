# test_api.py


import requests
import json

BASE_URL = "http://localhost:8899"


def test_endpoint(url, expected_status=200, description=""):
    """Тестирует эндпоинт и проверяет статус код"""
    try:
        response = requests.get(url)
        status_ok = response.status_code == expected_status
        print(f"{'✅' if status_ok else '❌'} {description}")
        print(f"   URL: {url}")
        print(f"   Status: {response.status_code} (expected {expected_status})")

        if status_ok and response.content:
            try:
                data = response.json()
                print(f"   Response: {json.dumps(data, ensure_ascii=False)[:100]}...")
                if isinstance(data, list):
                    print(f"   Items count: {len(data)}")
            except:
                print(f"   Response: {response.text[:100]}...")

        print()
        return status_ok

    except Exception as e:
        print(f"❌ {description} - Error: {e}")
        print()
        return False


def run_all_tests():
    """Запускает все тесты"""
    print("🚀 Starting API tests...\n")

    tests = [
        # Тесты пользователей
        (f"{BASE_URL}/user/1", 200, "Существующий пользователь"),
        (f"{BASE_URL}/user/999999", 404, "Несуществующий пользователь (404)"),
        (f"{BASE_URL}/user/2", 200, "Пользователь 2"),
        (f"{BASE_URL}/user/10", 200, "Пользователь 10"),

        # Тесты постов
        (f"{BASE_URL}/post/1", 200, "Существующий пост"),
        (f"{BASE_URL}/post/999999", 404, "Несуществующий пост (404)"),
        (f"{BASE_URL}/post/2", 200, "Пост 2"),
        (f"{BASE_URL}/post/10", 200, "Пост 10"),

        # Тесты ленты пользователя
        (f"{BASE_URL}/user/999/feed", 200, "Лента пользователя 999"),
        (f"{BASE_URL}/user/999/feed?limit=3", 200, "Лента пользователя 999 (limit=3)"),
        (f"{BASE_URL}/user/999999/feed", 200, "Лента несуществующего пользователя (пустая)"),

        # Тесты ленты поста
        (f"{BASE_URL}/post/1/feed", 200, "Лента поста 1"),
        (f"{BASE_URL}/post/1/feed?limit=2", 200, "Лента поста 1 (limit=2)"),
        (f"{BASE_URL}/post/999999/feed", 200, "Лента несуществующего поста (пустая)"),

        # Тесты рекомендаций
        (f"{BASE_URL}/post/recommendations/", 200, "Рекомендации (default limit=10)"),
        (f"{BASE_URL}/post/recommendations/?limit=5", 200, "Рекомендации (limit=5)"),
        (f"{BASE_URL}/post/recommendations/?limit=3", 200, "Рекомендации (limit=3)"),
    ]

    passed = 0
    total = len(tests)

    for url, expected_status, description in tests:
        if test_endpoint(url, expected_status, description):
            passed += 1

    print(f"📊 Results: {passed}/{total} tests passed")

    if passed == total:
        print("🎉 All tests passed successfully!")
    else:
        print("❌ Some tests failed!")

    return passed == total


if __name__ == "__main__":
    run_all_tests()
