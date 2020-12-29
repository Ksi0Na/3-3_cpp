// Copyright 2020 Olga Molchun olgamolchun5@gmail.com

#include <gtest/gtest.h>
#include <sources.hpp>
#include <string>
using std::string;

struct Student {
    string name;
    string group;
    explicit Student(const string& _name
                   , const string& _group)
          : name(_name)
          , group(_group) {}
};

TEST(SharedPtr, Copy_move) {
    SharedPtr<Student> ptr(new Student("Olga"
                                 , "IU10-31"));
    // copy ctor
    auto ptr1 = ptr;
    SharedPtr<Student> ptr3;
    // copy assignment
    ptr3 = ptr;
    // move ctor
    auto ptr4 = std::move(ptr);
    // move assignment
    ptr3 = std::move(ptr4);
}

TEST(SharedPtr, use_count) {
    SharedPtr<Student> ptr(new Student("Olga"
                        , "IU10-31"))
                        , ptr1 = ptr;
    // two smart pointers
    EXPECT_EQ(ptr.use_count(), 2);
    ptr.reset();
    // should be only one
    EXPECT_EQ(ptr1.use_count(), 1);
    auto tmp = std::move(ptr1);
    // nothing ever changed because of move
    EXPECT_EQ(tmp.use_count(), 1);
}

TEST(SharedPtr, operators) {
    SharedPtr<Student> ptr(new Student("Olga"
                                , "IU10-31"));
    EXPECT_TRUE(ptr);
    Student s(*ptr);
    EXPECT_EQ(s.name, "Olga");
    EXPECT_EQ(s.group, "IU10-31");

    EXPECT_EQ(ptr->name, "Olga");
    EXPECT_EQ(ptr->group, "IU10-31");

    Student* raw = ptr.get();
    EXPECT_EQ(raw->name, "Olga");
    EXPECT_EQ(raw->group, "IU10-31");
}
