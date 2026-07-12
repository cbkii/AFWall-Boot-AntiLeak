.class public Lcom/raizlabs/android/dbflow/converter/BigIntegerConverter;
.super Lcom/raizlabs/android/dbflow/converter/TypeConverter;
.source "BigIntegerConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/converter/TypeConverter<",
        "Ljava/lang/String;",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/converter/TypeConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDBValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/converter/BigIntegerConverter;->getDBValue(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDBValue(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getModelValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/converter/BigIntegerConverter;->getModelValue(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public getModelValue(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
