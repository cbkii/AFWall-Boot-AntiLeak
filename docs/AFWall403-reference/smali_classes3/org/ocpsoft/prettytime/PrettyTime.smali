.class public Lorg/ocpsoft/prettytime/PrettyTime;
.super Ljava/lang/Object;
.source "PrettyTime.java"


# instance fields
.field private volatile cachedUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/TimeUnit;",
            ">;"
        }
    .end annotation
.end field

.field private volatile locale:Ljava/util/Locale;

.field private overrideResourceBundle:Ljava/lang/String;

.field private volatile reference:Ljava/time/Instant;

.field private final units:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/ocpsoft/prettytime/TimeUnit;",
            "Lorg/ocpsoft/prettytime/TimeFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 86
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    iput-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->overrideResourceBundle:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->initTimeUnits()V

    return-void
.end method

.method public constructor <init>(Ljava/time/Instant;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>()V

    .line 138
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/time/Instant;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method public constructor <init>(Ljava/time/Instant;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/time/Instant;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDate;)V
    .locals 2

    .line 219
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/ZoneId;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/time/LocalDate;Ljava/time/ZoneId;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDate;Ljava/lang/String;)V
    .locals 1

    .line 234
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/ZoneId;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/time/LocalDate;Ljava/time/ZoneId;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDate;Ljava/time/ZoneId;)V
    .locals 1

    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, p1, p2, v0}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/time/LocalDate;Ljava/time/ZoneId;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDate;Ljava/time/ZoneId;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 260
    invoke-static {p1, p2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDate;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1, p3}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/time/Instant;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDateTime;)V
    .locals 1

    .line 165
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/ZoneId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDateTime;Ljava/lang/String;)V
    .locals 1

    .line 180
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/ZoneId;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, p1, p2, v0}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 207
    invoke-static {p1, p2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1, p3}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/time/Instant;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>()V

    .line 110
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/util/Date;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    .line 124
    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/util/Date;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Locale;)V
    .locals 0

    .line 300
    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/util/Locale;)V

    .line 301
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/util/Date;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 0

    .line 317
    invoke-direct {p0, p2, p3}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/util/Date;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 271
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>()V

    .line 272
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 0

    .line 284
    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method private addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V
    .locals 2

    .line 1621
    new-instance v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->overrideResourceBundle:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;-><init>(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->registerUnit(Lorg/ocpsoft/prettytime/TimeUnit;Lorg/ocpsoft/prettytime/TimeFormat;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method private calculateDuration(J)Lorg/ocpsoft/prettytime/Duration;
    .locals 17

    .line 1626
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 1631
    invoke-virtual/range {p0 .. p0}, Lorg/ocpsoft/prettytime/PrettyTime;->getUnits()Ljava/util/List;

    move-result-object v2

    .line 1633
    new-instance v3, Lorg/ocpsoft/prettytime/impl/DurationImpl;

    invoke-direct {v3}, Lorg/ocpsoft/prettytime/impl/DurationImpl;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1635
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1636
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 1637
    invoke-interface {v6}, Lorg/ocpsoft/prettytime/TimeUnit;->getMillisPerUnit()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 1638
    invoke-interface {v6}, Lorg/ocpsoft/prettytime/TimeUnit;->getMaxQuantity()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    .line 1640
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ne v5, v11, :cond_0

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    const-wide/16 v13, 0x0

    cmp-long v11, v13, v9

    if-nez v11, :cond_1

    if-nez v12, :cond_1

    add-int/lit8 v9, v5, 0x1

    .line 1643
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/ocpsoft/prettytime/TimeUnit;

    invoke-interface {v9}, Lorg/ocpsoft/prettytime/TimeUnit;->getMillisPerUnit()J

    move-result-wide v9

    invoke-interface {v6}, Lorg/ocpsoft/prettytime/TimeUnit;->getMillisPerUnit()J

    move-result-wide v15

    div-long/2addr v9, v15

    :cond_1
    mul-long v9, v9, v7

    cmp-long v11, v9, v0

    if-gtz v11, :cond_3

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1650
    :cond_3
    :goto_2
    invoke-virtual {v3, v6}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setUnit(Lorg/ocpsoft/prettytime/TimeUnit;)V

    cmp-long v2, v7, v0

    if-lez v2, :cond_4

    .line 1652
    invoke-direct/range {p0 .. p2}, Lorg/ocpsoft/prettytime/PrettyTime;->getSign(J)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setQuantity(J)V

    .line 1653
    invoke-virtual {v3, v13, v14}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setDelta(J)V

    goto :goto_3

    .line 1656
    :cond_4
    div-long v0, p1, v7

    invoke-virtual {v3, v0, v1}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setQuantity(J)V

    .line 1657
    invoke-virtual {v3}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getQuantity()J

    move-result-wide v0

    mul-long v0, v0, v7

    sub-long v0, p1, v0

    invoke-virtual {v3, v0, v1}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setDelta(J)V

    :cond_5
    :goto_3
    return-object v3
.end method

.method private getSign(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x1

    return-wide p1
.end method

.method private initTimeUnits()V
    .locals 1

    .line 1605
    new-instance v0, Lorg/ocpsoft/prettytime/units/JustNow;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/JustNow;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1606
    new-instance v0, Lorg/ocpsoft/prettytime/units/Millisecond;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Millisecond;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1607
    new-instance v0, Lorg/ocpsoft/prettytime/units/Second;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Second;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1608
    new-instance v0, Lorg/ocpsoft/prettytime/units/Minute;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Minute;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1609
    new-instance v0, Lorg/ocpsoft/prettytime/units/Hour;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Hour;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1610
    new-instance v0, Lorg/ocpsoft/prettytime/units/Day;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Day;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1611
    new-instance v0, Lorg/ocpsoft/prettytime/units/Week;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Week;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1612
    new-instance v0, Lorg/ocpsoft/prettytime/units/Month;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Month;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1613
    new-instance v0, Lorg/ocpsoft/prettytime/units/Year;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Year;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1614
    new-instance v0, Lorg/ocpsoft/prettytime/units/Decade;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Decade;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1615
    new-instance v0, Lorg/ocpsoft/prettytime/units/Century;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Century;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1616
    new-instance v0, Lorg/ocpsoft/prettytime/units/Millennium;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Millennium;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    return-void
.end method

.method private now()Ljava/util/Date;
    .locals 1

    .line 1600
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method


# virtual methods
.method public approximateDuration(Ljava/time/Instant;)Lorg/ocpsoft/prettytime/Duration;
    .locals 0

    if-eqz p1, :cond_0

    .line 349
    invoke-static {p1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    return-object p1
.end method

.method public approximateDuration(Ljava/time/LocalDate;)Lorg/ocpsoft/prettytime/Duration;
    .locals 1

    if-eqz p1, :cond_0

    .line 361
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDate;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/time/Instant;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    return-object p1
.end method

.method public approximateDuration(Ljava/time/LocalDate;Ljava/time/ZoneId;)Lorg/ocpsoft/prettytime/Duration;
    .locals 0

    if-eqz p1, :cond_0

    .line 376
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDate;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/time/Instant;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    return-object p1
.end method

.method public approximateDuration(Ljava/time/LocalDateTime;)Lorg/ocpsoft/prettytime/Duration;
    .locals 1

    if-eqz p1, :cond_0

    .line 390
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/time/Instant;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    return-object p1
.end method

.method public approximateDuration(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Lorg/ocpsoft/prettytime/Duration;
    .locals 0

    if-eqz p1, :cond_0

    .line 405
    invoke-static {p1, p2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/time/Instant;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    return-object p1
.end method

.method public approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;
    .locals 5

    if-nez p1, :cond_0

    .line 330
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljava/time/Instant;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljava/time/Instant;

    goto :goto_0

    .line 332
    :cond_1
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/Instant;

    move-result-object v0

    .line 333
    :goto_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v0}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Instant;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    const-wide/16 v1, 0x1

    .line 337
    :cond_2
    invoke-direct {p0, v1, v2}, Lorg/ocpsoft/prettytime/PrettyTime;->calculateDuration(J)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    return-object p1
.end method

.method public calculatePreciseDuration(Ljava/time/Instant;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            ")",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/Duration;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 446
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/Instant;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljava/time/Instant;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljava/time/Instant;

    goto :goto_0

    .line 448
    :cond_1
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/Instant;

    move-result-object v0

    .line 450
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 451
    invoke-static {p1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Instant;)J

    move-result-wide v2

    invoke-static {v0}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Instant;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 452
    invoke-direct {p0, v2, v3}, Lorg/ocpsoft/prettytime/PrettyTime;->calculateDuration(J)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    .line 453
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    const-wide/16 v2, 0x0

    .line 454
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getDelta()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 455
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getDelta()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/ocpsoft/prettytime/PrettyTime;->calculateDuration(J)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    .line 456
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 457
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ocpsoft/prettytime/Duration;

    .line 458
    invoke-interface {v0}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 463
    :cond_3
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    invoke-interface {v0}, Lorg/ocpsoft/prettytime/TimeUnit;->isPrecise()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public calculatePreciseDuration(Ljava/time/LocalDate;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDate;",
            ")",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/Duration;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 530
    invoke-static {p1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->calculatePreciseDuration(Ljava/time/LocalDateTime;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public calculatePreciseDuration(Ljava/time/LocalDate;Ljava/time/ZoneId;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDate;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/Duration;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 552
    invoke-static {p1, p2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDate;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->calculatePreciseDuration(Ljava/time/Instant;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public calculatePreciseDuration(Ljava/time/LocalDateTime;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDateTime;",
            ")",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/Duration;",
            ">;"
        }
    .end annotation

    .line 487
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->calculatePreciseDuration(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public calculatePreciseDuration(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDateTime;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/Duration;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 509
    invoke-static {p1, p2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->calculatePreciseDuration(Ljava/time/Instant;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public calculatePreciseDuration(Ljava/util/Date;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/Duration;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 425
    invoke-static {p1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->calculatePreciseDuration(Ljava/time/Instant;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public clearUnits()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/TimeUnit;",
            ">;"
        }
    .end annotation

    .line 1589
    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->getUnits()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    .line 1591
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return-object v0
.end method

.method public format(Ljava/time/Instant;)Ljava/lang/String;
    .locals 0

    .line 649
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/time/Instant;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/time/LocalDate;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 732
    invoke-static {p1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/time/LocalDateTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/time/LocalDate;Ljava/time/ZoneId;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 716
    invoke-static {p1, p2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDate;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/time/LocalDateTime;)Ljava/lang/String;
    .locals 1

    .line 699
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 686
    invoke-static {p1, p2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/time/OffsetDateTime;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 673
    invoke-static {p1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/OffsetDateTime;)Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/time/Instant;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/time/ZonedDateTime;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 661
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/time/Instant;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 581
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 582
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 565
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    .line 567
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    .line 568
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/Duration;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 614
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 617
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v2, v1

    const/4 v3, 0x0

    .line 621
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 622
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/ocpsoft/prettytime/Duration;

    .line 623
    invoke-interface {v2}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 631
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 632
    invoke-interface {v1, v2}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 634
    :cond_1
    invoke-interface {v1, v2}, Lorg/ocpsoft/prettytime/TimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 626
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported time unit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 637
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 615
    :cond_4
    :goto_2
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 596
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 598
    :cond_0
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v0

    .line 599
    invoke-interface {v0, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-interface {v0, p1, v1}, Lorg/ocpsoft/prettytime/TimeFormat;->decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDuration(Ljava/time/Instant;)Ljava/lang/String;
    .locals 0

    .line 1009
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/time/Instant;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDuration(Ljava/time/LocalDate;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1107
    invoke-static {p1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Ljava/time/LocalDateTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDuration(Ljava/time/LocalDate;Ljava/time/ZoneId;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1089
    invoke-static {p1, p2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDate;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDuration(Ljava/time/LocalDateTime;)Ljava/lang/String;
    .locals 1

    .line 1070
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDuration(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1055
    invoke-static {p1, p2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDuration(Ljava/time/OffsetDateTime;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1039
    invoke-static {p1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/OffsetDateTime;)Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Ljava/time/Instant;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDuration(Ljava/time/ZonedDateTime;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1024
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Ljava/time/Instant;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDuration(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 939
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 941
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    .line 942
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDuration(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 922
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    .line 923
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDuration(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/Duration;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 974
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 977
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 981
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 982
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ocpsoft/prettytime/Duration;

    .line 983
    invoke-interface {v2}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v3

    .line 988
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 989
    invoke-interface {v3, v2}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 991
    :cond_1
    invoke-interface {v3, v2}, Lorg/ocpsoft/prettytime/TimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 994
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 975
    :cond_3
    :goto_2
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDuration(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 957
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 959
    :cond_0
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v0

    .line 960
    invoke-interface {v0, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDurationUnrounded(Ljava/time/Instant;)Ljava/lang/String;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/time/Instant;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDurationUnrounded(Ljava/time/LocalDate;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1300
    invoke-static {p1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Ljava/time/LocalDateTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDurationUnrounded(Ljava/time/LocalDate;Ljava/time/ZoneId;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1282
    invoke-static {p1, p2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDate;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDurationUnrounded(Ljava/time/LocalDateTime;)Ljava/lang/String;
    .locals 1

    .line 1264
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDurationUnrounded(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1249
    invoke-static {p1, p2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDurationUnrounded(Ljava/time/OffsetDateTime;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1234
    invoke-static {p1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/OffsetDateTime;)Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Ljava/time/Instant;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDurationUnrounded(Ljava/time/ZonedDateTime;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1219
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Ljava/time/Instant;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDurationUnrounded(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 1139
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1141
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    .line 1142
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDurationUnrounded(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 1122
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    .line 1123
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDurationUnrounded(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/Duration;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1174
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1180
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1181
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ocpsoft/prettytime/Duration;

    .line 1182
    invoke-interface {v2}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v3

    .line 1184
    invoke-interface {v3, v2}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    const-string v2, " "

    .line 1186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1189
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1175
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDurationUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 1157
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1159
    :cond_0
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v0

    .line 1160
    invoke-interface {v0, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Ljava/time/Instant;)Ljava/lang/String;
    .locals 0

    .line 822
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/time/Instant;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Ljava/time/LocalDate;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 908
    invoke-static {p1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljava/time/LocalDateTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Ljava/time/LocalDate;Ljava/time/ZoneId;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 891
    invoke-static {p1, p2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDate;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Ljava/time/LocalDateTime;)Ljava/lang/String;
    .locals 1

    .line 873
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 860
    invoke-static {p1, p2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Ljava/time/OffsetDateTime;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 846
    invoke-static {p1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/OffsetDateTime;)Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljava/time/Instant;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Ljava/time/ZonedDateTime;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 834
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljava/time/Instant;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 762
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 763
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 745
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    .line 747
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    .line 748
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/Duration;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 794
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 797
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v2, v1

    const/4 v3, 0x0

    .line 801
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 802
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/ocpsoft/prettytime/Duration;

    .line 803
    invoke-interface {v2}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v1

    .line 805
    invoke-interface {v1, v2}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    const-string v4, " "

    .line 807
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 810
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 795
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 777
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 779
    :cond_0
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v0

    .line 780
    invoke-interface {v0, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v1

    .line 781
    invoke-interface {v0, p1, v1}, Lorg/ocpsoft/prettytime/TimeFormat;->decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    .line 1309
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    .line 1310
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ocpsoft/prettytime/TimeFormat;

    return-object p1

    .line 1313
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    .line 1314
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda12;-><init>(Lorg/ocpsoft/prettytime/PrettyTime;Ljava/util/Map;)V

    invoke-static {v1, v2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Set;Ljava/util/function/Consumer;)V

    .line 1315
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ocpsoft/prettytime/TimeFormat;

    return-object p1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getReference()Ljava/time/Instant;
    .locals 1

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljava/time/Instant;

    return-object v0
.end method

.method public getReferenceAsLegacyDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljava/time/Instant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljava/time/Instant;

    .line 1340
    invoke-static {v0}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUnit(Ljava/lang/Class;)Lorg/ocpsoft/prettytime/TimeUnit;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UNIT::",
            "Lorg/ocpsoft/prettytime/TimeUnit;",
            ">(",
            "Ljava/lang/Class<",
            "TUNIT;>;)TUNIT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    .line 1459
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 1460
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public getUnits()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/TimeUnit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1442
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1443
    new-instance v1, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1444
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    return-object v0
.end method

.method synthetic lambda$getFormat$0$org-ocpsoft-prettytime-PrettyTime(Ljava/util/Map;Lorg/ocpsoft/prettytime/TimeUnit;)V
    .locals 2

    .line 1314
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/ocpsoft/prettytime/TimeFormat;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerUnit(Lorg/ocpsoft/prettytime/TimeUnit;Lorg/ocpsoft/prettytime/TimeFormat;)Lorg/ocpsoft/prettytime/PrettyTime;
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    const-string v1, "TimeUnit to register must not be null."

    .line 1476
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ocpsoft/prettytime/TimeUnit;

    const-string v2, "TimeFormat to register must not be null."

    .line 1477
    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ocpsoft/prettytime/TimeFormat;

    .line 1476
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    instance-of v0, p1, Lorg/ocpsoft/prettytime/LocaleAware;

    if-eqz v0, :cond_0

    .line 1479
    check-cast p1, Lorg/ocpsoft/prettytime/LocaleAware;

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    invoke-interface {p1, v0}, Lorg/ocpsoft/prettytime/LocaleAware;->setLocale(Ljava/util/Locale;)Ljava/lang/Object;

    .line 1480
    :cond_0
    instance-of p1, p2, Lorg/ocpsoft/prettytime/LocaleAware;

    if-eqz p1, :cond_1

    .line 1481
    check-cast p2, Lorg/ocpsoft/prettytime/LocaleAware;

    iget-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    invoke-interface {p2, p1}, Lorg/ocpsoft/prettytime/LocaleAware;->setLocale(Ljava/util/Locale;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public removeUnit(Ljava/lang/Class;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UNIT::",
            "Lorg/ocpsoft/prettytime/TimeUnit;",
            ">(",
            "Ljava/lang/Class<",
            "TUNIT;>;)",
            "Lorg/ocpsoft/prettytime/TimeFormat;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    .line 1523
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 1524
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    iget-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    .line 1527
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ocpsoft/prettytime/TimeFormat;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public removeUnit(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    .line 1545
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ocpsoft/prettytime/TimeFormat;

    return-object p1
.end method

.method public setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/PrettyTime;
    .locals 3

    if-nez p1, :cond_0

    .line 1563
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    .line 1566
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 1567
    instance-of v2, v1, Lorg/ocpsoft/prettytime/LocaleAware;

    if-eqz v2, :cond_1

    .line 1568
    check-cast v1, Lorg/ocpsoft/prettytime/LocaleAware;

    invoke-interface {v1, p1}, Lorg/ocpsoft/prettytime/LocaleAware;->setLocale(Ljava/util/Locale;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    .line 1570
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ocpsoft/prettytime/TimeFormat;

    .line 1571
    instance-of v2, v1, Lorg/ocpsoft/prettytime/LocaleAware;

    if-eqz v2, :cond_3

    .line 1572
    check-cast v1, Lorg/ocpsoft/prettytime/LocaleAware;

    invoke-interface {v1, p1}, Lorg/ocpsoft/prettytime/LocaleAware;->setLocale(Ljava/util/Locale;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    return-object p0
.end method

.method public setReference(Ljava/time/Instant;)Lorg/ocpsoft/prettytime/PrettyTime;
    .locals 0

    iput-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljava/time/Instant;

    return-object p0
.end method

.method public setReference(Ljava/time/LocalDate;)Lorg/ocpsoft/prettytime/PrettyTime;
    .locals 0

    if-eqz p1, :cond_0

    .line 1417
    invoke-static {p1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/time/LocalDateTime;)Lorg/ocpsoft/prettytime/PrettyTime;

    move-result-object p1

    return-object p1
.end method

.method public setReference(Ljava/time/LocalDate;Ljava/time/ZoneId;)Lorg/ocpsoft/prettytime/PrettyTime;
    .locals 0

    if-eqz p1, :cond_0

    .line 1433
    invoke-static {p1, p2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDate;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/time/Instant;)Lorg/ocpsoft/prettytime/PrettyTime;

    move-result-object p1

    return-object p1
.end method

.method public setReference(Ljava/time/LocalDateTime;)Lorg/ocpsoft/prettytime/PrettyTime;
    .locals 1

    .line 1385
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Lorg/ocpsoft/prettytime/PrettyTime;

    move-result-object p1

    return-object p1
.end method

.method public setReference(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Lorg/ocpsoft/prettytime/PrettyTime;
    .locals 0

    if-eqz p1, :cond_0

    .line 1401
    invoke-static {p1, p2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/time/Instant;)Lorg/ocpsoft/prettytime/PrettyTime;

    move-result-object p1

    return-object p1
.end method

.method public setReference(Ljava/util/Date;)Lorg/ocpsoft/prettytime/PrettyTime;
    .locals 0

    if-eqz p1, :cond_0

    .line 1355
    invoke-static {p1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/time/Instant;)Lorg/ocpsoft/prettytime/PrettyTime;

    move-result-object p1

    return-object p1
.end method

.method public varargs setUnits(Lorg/ocpsoft/prettytime/TimeFormat;[Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/PrettyTime;
    .locals 3

    if-eqz p2, :cond_1

    .line 1501
    array-length v0, p2

    if-eqz v0, :cond_1

    const-string v0, "TimeFormat to register must not be null."

    .line 1503
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1505
    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->clearUnits()Ljava/util/List;

    .line 1506
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 1507
    invoke-virtual {p0, v2, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->registerUnit(Lorg/ocpsoft/prettytime/TimeUnit;Lorg/ocpsoft/prettytime/TimeFormat;)Lorg/ocpsoft/prettytime/PrettyTime;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 1502
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "TimeUnit instance(s) to register must be provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setUnits([Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)Lorg/ocpsoft/prettytime/PrettyTime;
    .locals 4

    if-eqz p1, :cond_1

    .line 1487
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 1490
    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->clearUnits()Ljava/util/List;

    .line 1491
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1492
    new-instance v3, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;

    invoke-direct {v3, v2}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;-><init>(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 1493
    invoke-virtual {p0, v2, v3}, Lorg/ocpsoft/prettytime/PrettyTime;->registerUnit(Lorg/ocpsoft/prettytime/TimeUnit;Lorg/ocpsoft/prettytime/TimeFormat;)Lorg/ocpsoft/prettytime/PrettyTime;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 1488
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TimeUnit instance(s) to register must be provided."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrettyTime [reference="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
