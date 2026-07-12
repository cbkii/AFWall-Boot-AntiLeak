.class public interface abstract Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver$OnModelStateChangedListener;
.super Ljava/lang/Object;
.source "FlowContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnModelStateChangedListener"
.end annotation


# virtual methods
.method public abstract onModelStateChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;[Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            "[",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ")V"
        }
    .end annotation
.end method
