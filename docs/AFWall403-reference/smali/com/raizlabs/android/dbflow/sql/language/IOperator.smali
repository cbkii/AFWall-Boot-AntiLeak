.class public interface abstract Lcom/raizlabs/android/dbflow/sql/language/IOperator;
.super Ljava/lang/Object;
.source "IOperator.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/Query;
.implements Lcom/raizlabs/android/dbflow/sql/language/IConditional;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/Query;",
        "Lcom/raizlabs/android/dbflow/sql/language/IConditional;"
    }
.end annotation


# virtual methods
.method public abstract between(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator$Between<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract concatenate(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract div(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract greaterThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract greaterThanOrEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract in(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator$In<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract in(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator$In<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract is(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract isNot(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract lessThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract lessThanOrEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract minus(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract notEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract notIn(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator$In<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract notIn(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator$In<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract plus(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract rem(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract times(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation
.end method
