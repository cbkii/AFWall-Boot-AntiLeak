.class public Lorg/ocpsoft/prettytime/i18n/Resources_ja;
.super Ljava/util/ListResourceBundle;
.source "Resources_ja.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;
    }
.end annotation


# static fields
.field private static final OBJECTS:[[Ljava/lang/Object;


# instance fields
.field private final formatMap:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 13

    const/16 v0, 0x5b

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CenturyPattern"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v5, "%n%u"

    aput-object v5, v2, v3

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "CenturyFuturePrefix"

    aput-object v6, v2, v4

    const-string v6, "\u4eca\u304b\u3089"

    aput-object v6, v2, v3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "CenturyFutureSuffix"

    aput-object v7, v2, v4

    const-string v7, "\u5f8c"

    aput-object v7, v2, v3

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v8, "CenturyPastPrefix"

    aput-object v8, v2, v4

    const-string v8, ""

    aput-object v8, v2, v3

    const/4 v9, 0x3

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "CenturyPastSuffix"

    aput-object v9, v2, v4

    const-string v9, "\u524d"

    aput-object v9, v2, v3

    const/4 v10, 0x4

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, "CenturySingularName"

    aput-object v10, v2, v4

    const-string v10, "\u4e16\u7d00"

    aput-object v10, v2, v3

    const/4 v11, 0x5

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "CenturyPluralName"

    aput-object v11, v2, v4

    aput-object v10, v2, v3

    const/4 v10, 0x6

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, "DayPattern"

    aput-object v10, v2, v4

    aput-object v5, v2, v3

    const/4 v10, 0x7

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, "DayFuturePrefix"

    aput-object v10, v2, v4

    aput-object v6, v2, v3

    const/16 v10, 0x8

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, "DayFutureSuffix"

    aput-object v10, v2, v4

    aput-object v7, v2, v3

    const/16 v10, 0x9

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, "DayPastPrefix"

    aput-object v10, v2, v4

    aput-object v8, v2, v3

    const/16 v10, 0xa

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, "DayPastSuffix"

    aput-object v10, v2, v4

    aput-object v9, v2, v3

    const/16 v10, 0xb

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, "DaySingularName"

    aput-object v10, v2, v4

    const-string v10, "\u65e5"

    aput-object v10, v2, v3

    const/16 v11, 0xc

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "DayPluralName"

    aput-object v11, v2, v4

    aput-object v10, v2, v3

    const/16 v10, 0xd

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, "DecadePattern"

    aput-object v10, v2, v4

    aput-object v5, v2, v3

    const/16 v10, 0xe

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, "DecadeFuturePrefix"

    aput-object v10, v2, v4

    aput-object v6, v2, v3

    const/16 v10, 0xf

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, "DecadeFutureSuffix"

    aput-object v10, v2, v4

    aput-object v7, v2, v3

    const/16 v10, 0x10

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, "DecadePastPrefix"

    aput-object v10, v2, v4

    aput-object v8, v2, v3

    const/16 v10, 0x11

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, "DecadePastSuffix"

    aput-object v10, v2, v4

    aput-object v9, v2, v3

    const/16 v10, 0x12

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, "DecadeSingularName"

    aput-object v10, v2, v4

    const-string v10, "\u5e74"

    aput-object v10, v2, v3

    const/16 v11, 0x13

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "DecadePluralName"

    aput-object v11, v2, v4

    aput-object v10, v2, v3

    const/16 v11, 0x14

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "HourPattern"

    aput-object v11, v2, v4

    aput-object v5, v2, v3

    const/16 v11, 0x15

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "HourFuturePrefix"

    aput-object v11, v2, v4

    aput-object v6, v2, v3

    const/16 v11, 0x16

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "HourFutureSuffix"

    aput-object v11, v2, v4

    aput-object v7, v2, v3

    const/16 v11, 0x17

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "HourPastPrefix"

    aput-object v11, v2, v4

    aput-object v8, v2, v3

    const/16 v11, 0x18

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "HourPastSuffix"

    aput-object v11, v2, v4

    aput-object v9, v2, v3

    const/16 v11, 0x19

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "HourSingularName"

    aput-object v11, v2, v4

    const-string v11, "\u6642\u9593"

    aput-object v11, v2, v3

    const/16 v12, 0x1a

    aput-object v2, v0, v12

    new-array v2, v1, [Ljava/lang/Object;

    const-string v12, "HourPluralName"

    aput-object v12, v2, v4

    aput-object v11, v2, v3

    const/16 v11, 0x1b

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "JustNowPattern"

    aput-object v11, v2, v4

    const-string v11, "%u"

    aput-object v11, v2, v3

    const/16 v11, 0x1c

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "JustNowFuturePrefix"

    aput-object v11, v2, v4

    aput-object v6, v2, v3

    const/16 v11, 0x1d

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "JustNowFutureSuffix"

    aput-object v11, v2, v4

    const-string v11, "\u3059\u3050"

    aput-object v11, v2, v3

    const/16 v11, 0x1e

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "JustNowPastPrefix"

    aput-object v11, v2, v4

    aput-object v8, v2, v3

    const/16 v11, 0x1f

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "JustNowPastSuffix"

    aput-object v11, v2, v4

    const-string v11, "\u305f\u3063\u305f\u4eca"

    aput-object v11, v2, v3

    const/16 v11, 0x20

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "JustNowSingularName"

    aput-object v11, v2, v4

    aput-object v8, v2, v3

    const/16 v11, 0x21

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "JustNowPluralName"

    aput-object v11, v2, v4

    aput-object v8, v2, v3

    const/16 v11, 0x22

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MillenniumPattern"

    aput-object v11, v2, v4

    aput-object v5, v2, v3

    const/16 v11, 0x23

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MillenniumFuturePrefix"

    aput-object v11, v2, v4

    aput-object v6, v2, v3

    const/16 v11, 0x24

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MillenniumFutureSuffix"

    aput-object v11, v2, v4

    aput-object v7, v2, v3

    const/16 v11, 0x25

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MillenniumPastPrefix"

    aput-object v11, v2, v4

    aput-object v8, v2, v3

    const/16 v11, 0x26

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MillenniumPastSuffix"

    aput-object v11, v2, v4

    aput-object v9, v2, v3

    const/16 v11, 0x27

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MillenniumSingularName"

    aput-object v11, v2, v4

    aput-object v10, v2, v3

    const/16 v11, 0x28

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MillenniumPluralName"

    aput-object v11, v2, v4

    aput-object v10, v2, v3

    const/16 v11, 0x29

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MillisecondPattern"

    aput-object v11, v2, v4

    aput-object v5, v2, v3

    const/16 v11, 0x2a

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MillisecondFuturePrefix"

    aput-object v11, v2, v4

    aput-object v6, v2, v3

    const/16 v11, 0x2b

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MillisecondFutureSuffix"

    aput-object v11, v2, v4

    aput-object v7, v2, v3

    const/16 v11, 0x2c

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MillisecondPastPrefix"

    aput-object v11, v2, v4

    aput-object v8, v2, v3

    const/16 v11, 0x2d

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MillisecondPastSuffix"

    aput-object v11, v2, v4

    aput-object v9, v2, v3

    const/16 v11, 0x2e

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MillisecondSingularName"

    aput-object v11, v2, v4

    const-string v11, "\u30df\u30ea\u79d2"

    aput-object v11, v2, v3

    const/16 v12, 0x2f

    aput-object v2, v0, v12

    new-array v2, v1, [Ljava/lang/Object;

    const-string v12, "MillisecondPluralName"

    aput-object v12, v2, v4

    aput-object v11, v2, v3

    const/16 v11, 0x30

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MinutePattern"

    aput-object v11, v2, v4

    aput-object v5, v2, v3

    const/16 v11, 0x31

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MinuteFuturePrefix"

    aput-object v11, v2, v4

    aput-object v6, v2, v3

    const/16 v11, 0x32

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MinuteFutureSuffix"

    aput-object v11, v2, v4

    aput-object v7, v2, v3

    const/16 v11, 0x33

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MinutePastPrefix"

    aput-object v11, v2, v4

    aput-object v8, v2, v3

    const/16 v11, 0x34

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MinutePastSuffix"

    aput-object v11, v2, v4

    aput-object v9, v2, v3

    const/16 v11, 0x35

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MinuteSingularName"

    aput-object v11, v2, v4

    const-string v11, "\u5206"

    aput-object v11, v2, v3

    const/16 v12, 0x36

    aput-object v2, v0, v12

    new-array v2, v1, [Ljava/lang/Object;

    const-string v12, "MinutePluralName"

    aput-object v12, v2, v4

    aput-object v11, v2, v3

    const/16 v11, 0x37

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MonthPattern"

    aput-object v11, v2, v4

    aput-object v5, v2, v3

    const/16 v11, 0x38

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MonthFuturePrefix"

    aput-object v11, v2, v4

    aput-object v6, v2, v3

    const/16 v11, 0x39

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MonthFutureSuffix"

    aput-object v11, v2, v4

    aput-object v7, v2, v3

    const/16 v11, 0x3a

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MonthPastPrefix"

    aput-object v11, v2, v4

    aput-object v8, v2, v3

    const/16 v11, 0x3b

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MonthPastSuffix"

    aput-object v11, v2, v4

    aput-object v9, v2, v3

    const/16 v11, 0x3c

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "MonthSingularName"

    aput-object v11, v2, v4

    const-string v11, "\u30f6\u6708"

    aput-object v11, v2, v3

    const/16 v12, 0x3d

    aput-object v2, v0, v12

    new-array v2, v1, [Ljava/lang/Object;

    const-string v12, "MonthPluralName"

    aput-object v12, v2, v4

    aput-object v11, v2, v3

    const/16 v11, 0x3e

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "SecondPattern"

    aput-object v11, v2, v4

    aput-object v5, v2, v3

    const/16 v11, 0x3f

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "SecondFuturePrefix"

    aput-object v11, v2, v4

    aput-object v6, v2, v3

    const/16 v11, 0x40

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "SecondFutureSuffix"

    aput-object v11, v2, v4

    aput-object v7, v2, v3

    const/16 v11, 0x41

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "SecondPastPrefix"

    aput-object v11, v2, v4

    aput-object v8, v2, v3

    const/16 v11, 0x42

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "SecondPastSuffix"

    aput-object v11, v2, v4

    aput-object v9, v2, v3

    const/16 v11, 0x43

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "SecondSingularName"

    aput-object v11, v2, v4

    const-string v11, "\u79d2"

    aput-object v11, v2, v3

    const/16 v12, 0x44

    aput-object v2, v0, v12

    new-array v2, v1, [Ljava/lang/Object;

    const-string v12, "SecondPluralName"

    aput-object v12, v2, v4

    aput-object v11, v2, v3

    const/16 v11, 0x45

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "WeekPattern"

    aput-object v11, v2, v4

    aput-object v5, v2, v3

    const/16 v11, 0x46

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "WeekFuturePrefix"

    aput-object v11, v2, v4

    aput-object v6, v2, v3

    const/16 v11, 0x47

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "WeekFutureSuffix"

    aput-object v11, v2, v4

    aput-object v7, v2, v3

    const/16 v11, 0x48

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "WeekPastPrefix"

    aput-object v11, v2, v4

    aput-object v8, v2, v3

    const/16 v11, 0x49

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "WeekPastSuffix"

    aput-object v11, v2, v4

    aput-object v9, v2, v3

    const/16 v11, 0x4a

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "WeekSingularName"

    aput-object v11, v2, v4

    const-string v11, "\u9031\u9593"

    aput-object v11, v2, v3

    const/16 v12, 0x4b

    aput-object v2, v0, v12

    new-array v2, v1, [Ljava/lang/Object;

    const-string v12, "WeekPluralName"

    aput-object v12, v2, v4

    aput-object v11, v2, v3

    const/16 v11, 0x4c

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "YearPattern"

    aput-object v11, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0x4d

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "YearFuturePrefix"

    aput-object v5, v2, v4

    aput-object v6, v2, v3

    const/16 v5, 0x4e

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "YearFutureSuffix"

    aput-object v5, v2, v4

    aput-object v7, v2, v3

    const/16 v5, 0x4f

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "YearPastPrefix"

    aput-object v5, v2, v4

    aput-object v8, v2, v3

    const/16 v5, 0x50

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "YearPastSuffix"

    aput-object v5, v2, v4

    aput-object v9, v2, v3

    const/16 v5, 0x51

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "YearSingularName"

    aput-object v5, v2, v4

    aput-object v10, v2, v3

    const/16 v5, 0x52

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "YearPluralName"

    aput-object v5, v2, v4

    aput-object v10, v2, v3

    const/16 v5, 0x53

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "AbstractTimeUnitPattern"

    aput-object v5, v2, v4

    aput-object v8, v2, v3

    const/16 v5, 0x54

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "AbstractTimeUnitFuturePrefix"

    aput-object v5, v2, v4

    aput-object v8, v2, v3

    const/16 v5, 0x55

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "AbstractTimeUnitFutureSuffix"

    aput-object v5, v2, v4

    aput-object v8, v2, v3

    const/16 v5, 0x56

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "AbstractTimeUnitPastPrefix"

    aput-object v5, v2, v4

    aput-object v8, v2, v3

    const/16 v5, 0x57

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "AbstractTimeUnitPastSuffix"

    aput-object v5, v2, v4

    aput-object v8, v2, v3

    const/16 v5, 0x58

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "AbstractTimeUnitSingularName"

    aput-object v5, v2, v4

    aput-object v8, v2, v3

    const/16 v5, 0x59

    aput-object v2, v0, v5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AbstractTimeUnitPluralName"

    aput-object v2, v1, v4

    aput-object v8, v1, v3

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_ja;->OBJECTS:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja;->formatMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_ja;->OBJECTS:[[Ljava/lang/Object;

    return-object v0
.end method

.method public getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 2

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja;->formatMap:Ljava/util/Map;

    .line 121
    new-instance v1, Lorg/ocpsoft/prettytime/i18n/Resources_ja$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$$ExternalSyntheticLambda0;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_ja;)V

    invoke-static {v0, p1, v1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ocpsoft/prettytime/TimeFormat;

    return-object p1
.end method

.method synthetic lambda$getFormatFor$0$org-ocpsoft-prettytime-i18n-Resources_ja(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 1

    .line 121
    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;

    invoke-direct {v0, p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;-><init>(Ljava/util/ResourceBundle;Lorg/ocpsoft/prettytime/TimeUnit;)V

    return-object v0
.end method
