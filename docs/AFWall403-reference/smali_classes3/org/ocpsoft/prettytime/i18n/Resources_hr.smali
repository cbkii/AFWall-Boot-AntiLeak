.class public Lorg/ocpsoft/prettytime/i18n/Resources_hr;
.super Ljava/util/ListResourceBundle;
.source "Resources_hr.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;,
        Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;,
        Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;
    }
.end annotation


# static fields
.field private static final OBJECTS:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x5b

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CenturyPattern"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v5, "%n %u"

    aput-object v5, v2, v3

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "CenturyFuturePrefix"

    aput-object v6, v2, v4

    const-string v6, "za "

    aput-object v6, v2, v3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "CenturyFutureSuffix"

    aput-object v7, v2, v4

    const-string v7, ""

    aput-object v7, v2, v3

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v8, "CenturyPastPrefix"

    aput-object v8, v2, v4

    aput-object v7, v2, v3

    const/4 v8, 0x3

    aput-object v2, v0, v8

    new-array v2, v1, [Ljava/lang/Object;

    const-string v8, "CenturyPastSuffix"

    aput-object v8, v2, v4

    const-string v8, " unatrag"

    aput-object v8, v2, v3

    const/4 v8, 0x4

    aput-object v2, v0, v8

    new-array v2, v1, [Ljava/lang/Object;

    const-string v8, "CenturySingularName"

    aput-object v8, v2, v4

    const-string v8, "stolje\u0107e"

    aput-object v8, v2, v3

    const/4 v8, 0x5

    aput-object v2, v0, v8

    new-array v2, v1, [Ljava/lang/Object;

    const-string v8, "CenturyPluralName"

    aput-object v8, v2, v4

    const-string v8, "stolje\u0107a"

    aput-object v8, v2, v3

    const/4 v8, 0x6

    aput-object v2, v0, v8

    new-array v2, v1, [Ljava/lang/Object;

    const-string v8, "DayPattern"

    aput-object v8, v2, v4

    aput-object v5, v2, v3

    const/4 v8, 0x7

    aput-object v2, v0, v8

    new-array v2, v1, [Ljava/lang/Object;

    const-string v8, "DayFuturePrefix"

    aput-object v8, v2, v4

    aput-object v6, v2, v3

    const/16 v8, 0x8

    aput-object v2, v0, v8

    new-array v2, v1, [Ljava/lang/Object;

    const-string v8, "DayFutureSuffix"

    aput-object v8, v2, v4

    aput-object v7, v2, v3

    const/16 v8, 0x9

    aput-object v2, v0, v8

    new-array v2, v1, [Ljava/lang/Object;

    const-string v8, "DayPastPrefix"

    aput-object v8, v2, v4

    const-string v8, "prije "

    aput-object v8, v2, v3

    const/16 v9, 0xa

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DayPastSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0xb

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DaySingularName"

    aput-object v9, v2, v4

    const-string v9, "dan"

    aput-object v9, v2, v3

    const/16 v9, 0xc

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DayPluralName"

    aput-object v9, v2, v4

    const-string v9, "dana"

    aput-object v9, v2, v3

    const/16 v9, 0xd

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DecadePattern"

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    const/16 v9, 0xe

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DecadeFuturePrefix"

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    const/16 v9, 0xf

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DecadeFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x10

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DecadePastPrefix"

    aput-object v9, v2, v4

    aput-object v8, v2, v3

    const/16 v9, 0x11

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DecadePastSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x12

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DecadeSingularName"

    aput-object v9, v2, v4

    const-string v9, "desetlje\u0107e"

    aput-object v9, v2, v3

    const/16 v9, 0x13

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DecadePluralName"

    aput-object v9, v2, v4

    const-string v9, "desetlje\u0107a"

    aput-object v9, v2, v3

    const/16 v9, 0x14

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "HourPattern"

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    const/16 v9, 0x15

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "HourFuturePrefix"

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    const/16 v9, 0x16

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "HourFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x17

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "HourPastPrefix"

    aput-object v9, v2, v4

    aput-object v8, v2, v3

    const/16 v9, 0x18

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "HourPastSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x19

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "HourSingularName"

    aput-object v9, v2, v4

    const-string v9, "sat"

    aput-object v9, v2, v3

    const/16 v9, 0x1a

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "HourPluralName"

    aput-object v9, v2, v4

    const-string v9, "sati"

    aput-object v9, v2, v3

    const/16 v9, 0x1b

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "JustNowPattern"

    aput-object v9, v2, v4

    const-string v9, "%u"

    aput-object v9, v2, v3

    const/16 v9, 0x1c

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "JustNowFuturePrefix"

    aput-object v9, v2, v4

    const-string v9, "za nekoliko trenutaka"

    aput-object v9, v2, v3

    const/16 v9, 0x1d

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "JustNowFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x1e

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "JustNowPastPrefix"

    aput-object v9, v2, v4

    const-string v9, "prije nekoliko trenutaka"

    aput-object v9, v2, v3

    const/16 v9, 0x1f

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "JustNowPastSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x20

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "JustNowSingularName"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x21

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "JustNowPluralName"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x22

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillenniumPattern"

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    const/16 v9, 0x23

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillenniumFuturePrefix"

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    const/16 v9, 0x24

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillenniumFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x25

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillenniumPastPrefix"

    aput-object v9, v2, v4

    aput-object v8, v2, v3

    const/16 v9, 0x26

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillenniumPastSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x27

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillenniumSingularName"

    aput-object v9, v2, v4

    const-string v9, "tisu\u0107lje\u0107e"

    aput-object v9, v2, v3

    const/16 v9, 0x28

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillenniumPluralName"

    aput-object v9, v2, v4

    const-string v9, "tisu\u0107lje\u0107a"

    aput-object v9, v2, v3

    const/16 v9, 0x29

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillisecondPattern"

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    const/16 v9, 0x2a

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillisecondFuturePrefix"

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    const/16 v9, 0x2b

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillisecondFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x2c

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillisecondPastPrefix"

    aput-object v9, v2, v4

    aput-object v8, v2, v3

    const/16 v9, 0x2d

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillisecondPastSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x2e

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillisecondSingularName"

    aput-object v9, v2, v4

    const-string v9, "milisekunda"

    aput-object v9, v2, v3

    const/16 v10, 0x2f

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, "MillisecondPluralName"

    aput-object v10, v2, v4

    aput-object v9, v2, v3

    const/16 v9, 0x30

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MinutePattern"

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    const/16 v9, 0x31

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MinuteFuturePrefix"

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    const/16 v9, 0x32

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MinuteFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x33

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MinutePastPrefix"

    aput-object v9, v2, v4

    aput-object v8, v2, v3

    const/16 v9, 0x34

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MinutePastSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x35

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MinuteSingularName"

    aput-object v9, v2, v4

    const-string v9, "minuta"

    aput-object v9, v2, v3

    const/16 v10, 0x36

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, "MinutePluralName"

    aput-object v10, v2, v4

    aput-object v9, v2, v3

    const/16 v9, 0x37

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MonthPattern"

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    const/16 v9, 0x38

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MonthFuturePrefix"

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    const/16 v9, 0x39

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MonthFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x3a

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MonthPastPrefix"

    aput-object v9, v2, v4

    aput-object v8, v2, v3

    const/16 v9, 0x3b

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MonthPastSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x3c

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MonthSingularName"

    aput-object v9, v2, v4

    const-string v9, "mjesec"

    aput-object v9, v2, v3

    const/16 v9, 0x3d

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MonthPluralName"

    aput-object v9, v2, v4

    const-string v9, "mjeseca"

    aput-object v9, v2, v3

    const/16 v9, 0x3e

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "SecondPattern"

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    const/16 v9, 0x3f

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "SecondFuturePrefix"

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    const/16 v9, 0x40

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "SecondFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x41

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "SecondPastPrefix"

    aput-object v9, v2, v4

    aput-object v8, v2, v3

    const/16 v9, 0x42

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "SecondPastSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x43

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "SecondSingularName"

    aput-object v9, v2, v4

    const-string v9, "sekunda"

    aput-object v9, v2, v3

    const/16 v9, 0x44

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "SecondPluralName"

    aput-object v9, v2, v4

    const-string v9, "sekundi"

    aput-object v9, v2, v3

    const/16 v9, 0x45

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "WeekPattern"

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    const/16 v9, 0x46

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "WeekFuturePrefix"

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    const/16 v9, 0x47

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "WeekFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x48

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "WeekPastPrefix"

    aput-object v9, v2, v4

    aput-object v8, v2, v3

    const/16 v9, 0x49

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "WeekPastSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x4a

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "WeekSingularName"

    aput-object v9, v2, v4

    const-string v9, "tjedan"

    aput-object v9, v2, v3

    const/16 v9, 0x4b

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "WeekPluralName"

    aput-object v9, v2, v4

    const-string v9, "tjedna"

    aput-object v9, v2, v3

    const/16 v9, 0x4c

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "YearPattern"

    aput-object v9, v2, v4

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

    aput-object v7, v2, v3

    const/16 v5, 0x51

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "YearSingularName"

    aput-object v5, v2, v4

    const-string v5, "godina"

    aput-object v5, v2, v3

    const/16 v6, 0x52

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "YearPluralName"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0x53

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "AbstractTimeUnitPattern"

    aput-object v5, v2, v4

    aput-object v7, v2, v3

    const/16 v5, 0x54

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "AbstractTimeUnitFuturePrefix"

    aput-object v5, v2, v4

    aput-object v7, v2, v3

    const/16 v5, 0x55

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "AbstractTimeUnitFutureSuffix"

    aput-object v5, v2, v4

    aput-object v7, v2, v3

    const/16 v5, 0x56

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "AbstractTimeUnitPastPrefix"

    aput-object v5, v2, v4

    aput-object v7, v2, v3

    const/16 v5, 0x57

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "AbstractTimeUnitPastSuffix"

    aput-object v5, v2, v4

    aput-object v7, v2, v3

    const/16 v5, 0x58

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "AbstractTimeUnitSingularName"

    aput-object v5, v2, v4

    aput-object v7, v2, v3

    const/16 v5, 0x59

    aput-object v2, v0, v5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AbstractTimeUnitPluralName"

    aput-object v2, v1, v4

    aput-object v7, v1, v3

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_hr;->OBJECTS:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_hr;->OBJECTS:[[Ljava/lang/Object;

    return-object v0
.end method

.method public getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 7

    .line 143
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Minute;

    const-wide/16 v1, 0x4

    const-wide v3, 0x7fffffffffffffffL

    const-wide/16 v5, 0x1

    if-eqz v0, :cond_0

    .line 144
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    const-string v0, "Minute"

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "minutu"

    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    const-string v0, "minute"

    .line 145
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    const-string v0, "minuta"

    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    .line 146
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;

    move-result-object p1

    return-object p1

    .line 148
    :cond_0
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Hour;

    if-eqz v0, :cond_1

    .line 149
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    const-string v0, "Hour"

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "sat"

    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    const-string v0, "sata"

    .line 150
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    const-string v0, "sati"

    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    .line 151
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;

    move-result-object p1

    return-object p1

    .line 153
    :cond_1
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Day;

    if-eqz v0, :cond_2

    .line 154
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    const-string v0, "Day"

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "dan"

    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    const-string v0, "dana"

    .line 155
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    .line 156
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;

    move-result-object p1

    return-object p1

    .line 158
    :cond_2
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Week;

    if-eqz v0, :cond_3

    .line 159
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    const-string v0, "Week"

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "tjedan"

    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    const-string v0, "tjedna"

    .line 160
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    const-string v0, "tjedana"

    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    .line 161
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;

    move-result-object p1

    return-object p1

    .line 163
    :cond_3
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Month;

    if-eqz v0, :cond_4

    .line 164
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    const-string v0, "Month"

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "mjesec"

    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    const-string v0, "mjeseca"

    .line 165
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    const-string v0, "mjeseci"

    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    .line 166
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;

    move-result-object p1

    return-object p1

    .line 168
    :cond_4
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Year;

    if-eqz v0, :cond_5

    .line 169
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    const-string v0, "Year"

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "godinu"

    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    const-string v0, "godine"

    .line 170
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    const-string v0, "godina"

    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    .line 171
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;

    move-result-object p1

    return-object p1

    .line 173
    :cond_5
    instance-of p1, p1, Lorg/ocpsoft/prettytime/units/Millennium;

    if-eqz p1, :cond_6

    .line 174
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    const-string v0, "Millennium"

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "tisu\u0107lje\u0107e"

    .line 175
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    const-string v0, "tisu\u0107lje\u0107a"

    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    move-result-object p1

    .line 176
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method
