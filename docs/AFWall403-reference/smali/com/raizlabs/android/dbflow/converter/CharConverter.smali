.class public Lcom/raizlabs/android/dbflow/converter/CharConverter;
.super Lcom/raizlabs/android/dbflow/converter/TypeConverter;
.source "CharConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/converter/TypeConverter<",
        "Ljava/lang/String;",
        "Ljava/lang/Character;",
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
.method public bridge synthetic getDBValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/converter/CharConverter;->getDBValue(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDBValue(Ljava/lang/Character;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    .line 10
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    aput-char p1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getModelValue(Ljava/lang/String;)Ljava/lang/Character;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getModelValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/converter/CharConverter;->getModelValue(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method
