.class public Lcom/raizlabs/android/dbflow/converter/BooleanConverter;
.super Lcom/raizlabs/android/dbflow/converter/TypeConverter;
.source "BooleanConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/converter/TypeConverter<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/converter/TypeConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public getDBValue(Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getDBValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/converter/BooleanConverter;->getDBValue(Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getModelValue(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public bridge synthetic getModelValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/converter/BooleanConverter;->getModelValue(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
