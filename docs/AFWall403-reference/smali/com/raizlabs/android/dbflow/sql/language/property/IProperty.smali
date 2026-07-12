.class public interface abstract Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
.super Ljava/lang/Object;
.source "IProperty.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/Query;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/Query;"
    }
.end annotation


# virtual methods
.method public abstract as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract asc()Lcom/raizlabs/android/dbflow/sql/language/OrderBy;
.end method

.method public abstract concatenate(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract desc()Lcom/raizlabs/android/dbflow/sql/language/OrderBy;
.end method

.method public abstract distinct()Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method public abstract div(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract getCursorKey()Ljava/lang/String;
.end method

.method public abstract getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;
.end method

.method public abstract getTable()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract minus(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract plus(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract rem(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract times(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract withTable()Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method public abstract withTable(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/NameAlias;",
            ")TP;"
        }
    .end annotation
.end method
