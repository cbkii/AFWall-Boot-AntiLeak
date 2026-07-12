.class public interface abstract Lcom/raizlabs/android/dbflow/sql/language/Transformable;
.super Ljava/lang/Object;
.source "Transformable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public varargs abstract groupBy([Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/NameAlias;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract groupBy([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract having([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract limit(I)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract offset(I)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract orderBy(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;Z)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/NameAlias;",
            "Z)",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract orderBy(Lcom/raizlabs/android/dbflow/sql/language/OrderBy;)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/OrderBy;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract orderBy(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Z)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            "Z)",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract orderByAll(Ljava/util/List;)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/OrderBy;",
            ">;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TT;>;"
        }
    .end annotation
.end method
