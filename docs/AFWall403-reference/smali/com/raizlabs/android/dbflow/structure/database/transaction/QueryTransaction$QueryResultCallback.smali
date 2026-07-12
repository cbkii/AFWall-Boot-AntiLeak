.class public interface abstract Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultCallback;
.super Ljava/lang/Object;
.source "QueryTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueryResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onQueryResult(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;Lcom/raizlabs/android/dbflow/sql/language/CursorResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction<",
            "TTResult;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/CursorResult<",
            "TTResult;>;)V"
        }
    .end annotation
.end method
