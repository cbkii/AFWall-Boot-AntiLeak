.class public interface abstract Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$OnModelStateChangedListener;
.super Ljava/lang/Object;
.source "DirectModelNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnModelStateChangedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            ")V"
        }
    .end annotation
.end method
