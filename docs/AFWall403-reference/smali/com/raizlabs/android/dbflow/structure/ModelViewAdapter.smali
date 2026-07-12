.class public abstract Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;
.super Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;
.source "ModelViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModelView:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/structure/InstanceAdapter<",
        "TTModelView;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    return-void
.end method


# virtual methods
.method public abstract getCreationQuery()Ljava/lang/String;
.end method

.method public abstract getViewName()Ljava/lang/String;
.end method
