.class public interface abstract Lcom/raizlabs/android/dbflow/sql/language/IConditional;
.super Ljava/lang/Object;
.source "IConditional.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/Query;


# virtual methods
.method public abstract between(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;
.end method

.method public abstract between(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;
.end method

.method public abstract concatenate(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract div(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract eq(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract eq(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract glob(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract glob(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract glob(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract greaterThan(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract greaterThan(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract greaterThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract greaterThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public varargs abstract in(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;[Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
.end method

.method public varargs abstract in(Lcom/raizlabs/android/dbflow/sql/language/IConditional;[Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
.end method

.method public abstract is(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract is(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract isNot(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract isNot(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract isNotNull()Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract isNull()Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract lessThan(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract lessThan(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract lessThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract lessThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract like(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract like(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract like(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract minus(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract notEq(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract notEq(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public varargs abstract notIn(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;[Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
.end method

.method public varargs abstract notIn(Lcom/raizlabs/android/dbflow/sql/language/IConditional;[Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
.end method

.method public abstract notLike(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract notLike(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract notLike(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract plus(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract rem(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method

.method public abstract times(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end method
