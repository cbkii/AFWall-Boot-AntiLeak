.class public interface abstract Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;
.super Ljava/lang/Object;
.source "IFlowCursorIterator.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract cursor()Landroid/database/Cursor;
.end method

.method public abstract getCount()J
.end method

.method public abstract getItem(J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TTModel;"
        }
    .end annotation
.end method

.method public abstract iterator()Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorIterator<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public abstract iterator(IJ)Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorIterator<",
            "TTModel;>;"
        }
    .end annotation
.end method
