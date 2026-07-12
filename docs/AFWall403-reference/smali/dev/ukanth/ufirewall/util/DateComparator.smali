.class public Ldev/ukanth/ufirewall/util/DateComparator;
.super Ljava/lang/Object;
.source "DateComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ldev/ukanth/ufirewall/log/LogData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ldev/ukanth/ufirewall/log/LogData;Ldev/ukanth/ufirewall/log/LogData;)I
    .locals 5

    .line 14
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/log/LogData;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 15
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 16
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 10
    check-cast p1, Ldev/ukanth/ufirewall/log/LogData;

    check-cast p2, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/util/DateComparator;->compare(Ldev/ukanth/ufirewall/log/LogData;Ldev/ukanth/ufirewall/log/LogData;)I

    move-result p1

    return p1
.end method
