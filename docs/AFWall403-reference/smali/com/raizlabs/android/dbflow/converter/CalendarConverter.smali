.class public Lcom/raizlabs/android/dbflow/converter/CalendarConverter;
.super Lcom/raizlabs/android/dbflow/converter/TypeConverter;
.source "CalendarConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/converter/TypeConverter<",
        "Ljava/lang/Long;",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/converter/TypeConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public getDBValue(Ljava/util/Calendar;)Ljava/lang/Long;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getDBValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/converter/CalendarConverter;->getDBValue(Ljava/util/Calendar;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getModelValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/converter/CalendarConverter;->getModelValue(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getModelValue(Ljava/lang/Long;)Ljava/util/Calendar;
    .locals 3

    if-eqz p1, :cond_0

    .line 21
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 22
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
