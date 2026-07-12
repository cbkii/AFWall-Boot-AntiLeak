.class public abstract Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;
.super Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;
.source "InstanceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter<",
        "TTModel;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    return-void
.end method


# virtual methods
.method public abstract newInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation
.end method
