.class public interface abstract Lcom/raizlabs/android/dbflow/sql/language/WhereBase;
.super Ljava/lang/Object;
.source "WhereBase.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/Query;
.implements Lcom/raizlabs/android/dbflow/sql/language/Actionable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/Query;",
        "Lcom/raizlabs/android/dbflow/sql/language/Actionable;"
    }
.end annotation


# virtual methods
.method public abstract getQueryBuilderBase()Lcom/raizlabs/android/dbflow/sql/Query;
.end method

.method public abstract getTable()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end method
