.class public Lorg/ocpsoft/prettytime/i18n/Resources_fi;
.super Ljava/util/ListResourceBundle;
.source "Resources_fi.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;
    }
.end annotation


# static fields
.field private static CONTENTS:[[Ljava/lang/Object; = null

.field private static final tolerance:I = 0x32


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
    .locals 11

    const/16 v0, 0x54

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "JustNowPattern"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v5, "%u"

    aput-object v5, v2, v3

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "JustNowPastSingularName"

    aput-object v6, v2, v4

    const-string v6, "hetki"

    aput-object v6, v2, v3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "JustNowFutureSingularName"

    aput-object v6, v2, v4

    const-string v6, "hetken"

    aput-object v6, v2, v3

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "JustNowPastSuffix"

    aput-object v6, v2, v4

    const-string v6, "sitten"

    aput-object v6, v2, v3

    const/4 v7, 0x3

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "JustNowFutureSuffix"

    aput-object v7, v2, v4

    const-string v7, "p\u00e4\u00e4st\u00e4"

    aput-object v7, v2, v3

    const/4 v8, 0x4

    aput-object v2, v0, v8

    new-array v2, v1, [Ljava/lang/Object;

    const-string v8, "MillisecondPattern"

    aput-object v8, v2, v4

    aput-object v5, v2, v3

    const/4 v8, 0x5

    aput-object v2, v0, v8

    new-array v2, v1, [Ljava/lang/Object;

    const-string v8, "MillisecondPluralPattern"

    aput-object v8, v2, v4

    const-string v8, "%n %u"

    aput-object v8, v2, v3

    const/4 v9, 0x6

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillisecondPastSingularName"

    aput-object v9, v2, v4

    const-string v9, "millisekunti"

    aput-object v9, v2, v3

    const/4 v9, 0x7

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillisecondPastPluralName"

    aput-object v9, v2, v4

    const-string v9, "millisekuntia"

    aput-object v9, v2, v3

    const/16 v9, 0x8

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillisecondFutureSingularName"

    aput-object v9, v2, v4

    const-string v9, "millisekunnin"

    aput-object v9, v2, v3

    const/16 v9, 0x9

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillisecondPastSuffix"

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    const/16 v9, 0xa

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillisecondFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0xb

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "SecondPattern"

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    const/16 v9, 0xc

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "SecondPluralPattern"

    aput-object v9, v2, v4

    aput-object v8, v2, v3

    const/16 v9, 0xd

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "SecondPastSingularName"

    aput-object v9, v2, v4

    const-string v9, "sekunti"

    aput-object v9, v2, v3

    const/16 v9, 0xe

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "SecondPastPluralName"

    aput-object v9, v2, v4

    const-string v9, "sekuntia"

    aput-object v9, v2, v3

    const/16 v9, 0xf

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "SecondFutureSingularName"

    aput-object v9, v2, v4

    const-string v9, "sekunnin"

    aput-object v9, v2, v3

    const/16 v9, 0x10

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "SecondPastSuffix"

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    const/16 v9, 0x11

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "SecondFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x12

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MinutePattern"

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    const/16 v9, 0x13

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MinutePluralPattern"

    aput-object v9, v2, v4

    aput-object v8, v2, v3

    const/16 v9, 0x14

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MinutePastSingularName"

    aput-object v9, v2, v4

    const-string v9, "minuutti"

    aput-object v9, v2, v3

    const/16 v9, 0x15

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MinutePastPluralName"

    aput-object v9, v2, v4

    const-string v9, "minuuttia"

    aput-object v9, v2, v3

    const/16 v9, 0x16

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MinuteFutureSingularName"

    aput-object v9, v2, v4

    const-string v9, "minuutin"

    aput-object v9, v2, v3

    const/16 v9, 0x17

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MinutePastSuffix"

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    const/16 v9, 0x18

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MinuteFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x19

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "HourPattern"

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    const/16 v9, 0x1a

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "HourPluralPattern"

    aput-object v9, v2, v4

    aput-object v8, v2, v3

    const/16 v9, 0x1b

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "HourPastSingularName"

    aput-object v9, v2, v4

    const-string v9, "tunti"

    aput-object v9, v2, v3

    const/16 v9, 0x1c

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "HourPastPluralName"

    aput-object v9, v2, v4

    const-string v9, "tuntia"

    aput-object v9, v2, v3

    const/16 v9, 0x1d

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "HourFutureSingularName"

    aput-object v9, v2, v4

    const-string v9, "tunnin"

    aput-object v9, v2, v3

    const/16 v9, 0x1e

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "HourPastSuffix"

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    const/16 v9, 0x1f

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "HourFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x20

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DayPattern"

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    const/16 v9, 0x21

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DayPluralPattern"

    aput-object v9, v2, v4

    aput-object v8, v2, v3

    const/16 v9, 0x22

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DayPastSingularName"

    aput-object v9, v2, v4

    const-string v9, "eilen"

    aput-object v9, v2, v3

    const/16 v9, 0x23

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DayPastPluralName"

    aput-object v9, v2, v4

    const-string v9, "p\u00e4iv\u00e4\u00e4"

    aput-object v9, v2, v3

    const/16 v9, 0x24

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DayFutureSingularName"

    aput-object v9, v2, v4

    const-string v9, "huomenna"

    aput-object v9, v2, v3

    const/16 v9, 0x25

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DayFuturePluralName"

    aput-object v9, v2, v4

    const-string v9, "p\u00e4iv\u00e4n"

    aput-object v9, v2, v3

    const/16 v9, 0x26

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DayPastSuffix"

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    const/16 v9, 0x27

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DayFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x28

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "WeekPattern"

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    const/16 v9, 0x29

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "WeekPluralPattern"

    aput-object v9, v2, v4

    aput-object v8, v2, v3

    const/16 v9, 0x2a

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "WeekPastSingularName"

    aput-object v9, v2, v4

    const-string v9, "viikko"

    aput-object v9, v2, v3

    const/16 v9, 0x2b

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "WeekPastPluralName"

    aput-object v9, v2, v4

    const-string v9, "viikkoa"

    aput-object v9, v2, v3

    const/16 v9, 0x2c

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "WeekFutureSingularName"

    aput-object v9, v2, v4

    const-string v9, "viikon"

    aput-object v9, v2, v3

    const/16 v10, 0x2d

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, "WeekFuturePluralName"

    aput-object v10, v2, v4

    aput-object v9, v2, v3

    const/16 v9, 0x2e

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "WeekPastSuffix"

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    const/16 v9, 0x2f

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "WeekFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x30

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MonthPattern"

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    const/16 v9, 0x31

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MonthPluralPattern"

    aput-object v9, v2, v4

    aput-object v8, v2, v3

    const/16 v9, 0x32

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MonthPastSingularName"

    aput-object v9, v2, v4

    const-string v9, "kuukausi"

    aput-object v9, v2, v3

    const/16 v9, 0x33

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MonthPastPluralName"

    aput-object v9, v2, v4

    const-string v9, "kuukautta"

    aput-object v9, v2, v3

    const/16 v9, 0x34

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MonthFutureSingularName"

    aput-object v9, v2, v4

    const-string v9, "kuukauden"

    aput-object v9, v2, v3

    const/16 v9, 0x35

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MonthPastSuffix"

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    const/16 v9, 0x36

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MonthFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x37

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "YearPattern"

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    const/16 v9, 0x38

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "YearPluralPattern"

    aput-object v9, v2, v4

    aput-object v8, v2, v3

    const/16 v9, 0x39

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "YearPastSingularName"

    aput-object v9, v2, v4

    const-string v9, "vuosi"

    aput-object v9, v2, v3

    const/16 v9, 0x3a

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "YearPastPluralName"

    aput-object v9, v2, v4

    const-string v9, "vuotta"

    aput-object v9, v2, v3

    const/16 v9, 0x3b

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "YearFutureSingularName"

    aput-object v9, v2, v4

    const-string v9, "vuoden"

    aput-object v9, v2, v3

    const/16 v9, 0x3c

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "YearPastSuffix"

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    const/16 v9, 0x3d

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "YearFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x3e

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DecadePattern"

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    const/16 v9, 0x3f

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DecadePluralPattern"

    aput-object v9, v2, v4

    aput-object v8, v2, v3

    const/16 v9, 0x40

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DecadePastSingularName"

    aput-object v9, v2, v4

    const-string v9, "vuosikymmen"

    aput-object v9, v2, v3

    const/16 v9, 0x41

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DecadePastPluralName"

    aput-object v9, v2, v4

    const-string v9, "vuosikymment\u00e4"

    aput-object v9, v2, v3

    const/16 v9, 0x42

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DecadeFutureSingularName"

    aput-object v9, v2, v4

    const-string v9, "vuosikymmenen"

    aput-object v9, v2, v3

    const/16 v9, 0x43

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DecadePastSuffix"

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    const/16 v9, 0x44

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "DecadeFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x45

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "CenturyPattern"

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    const/16 v9, 0x46

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "CenturyPluralPattern"

    aput-object v9, v2, v4

    aput-object v8, v2, v3

    const/16 v9, 0x47

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "CenturyPastSingularName"

    aput-object v9, v2, v4

    const-string v9, "vuosisata"

    aput-object v9, v2, v3

    const/16 v9, 0x48

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "CenturyPastPluralName"

    aput-object v9, v2, v4

    const-string v9, "vuosisataa"

    aput-object v9, v2, v3

    const/16 v9, 0x49

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "CenturyFutureSingularName"

    aput-object v9, v2, v4

    const-string v9, "vuosisadan"

    aput-object v9, v2, v3

    const/16 v9, 0x4a

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "CenturyPastSuffix"

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    const/16 v9, 0x4b

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "CenturyFutureSuffix"

    aput-object v9, v2, v4

    aput-object v7, v2, v3

    const/16 v9, 0x4c

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "MillenniumPattern"

    aput-object v9, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0x4d

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "MillenniumPluralPattern"

    aput-object v5, v2, v4

    aput-object v8, v2, v3

    const/16 v5, 0x4e

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "MillenniumPastSingularName"

    aput-object v5, v2, v4

    const-string v5, "vuosituhat"

    aput-object v5, v2, v3

    const/16 v5, 0x4f

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "MillenniumPastPluralName"

    aput-object v5, v2, v4

    const-string v5, "vuosituhatta"

    aput-object v5, v2, v3

    const/16 v5, 0x50

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "MillenniumFutureSingularName"

    aput-object v5, v2, v4

    const-string v5, "vuosituhannen"

    aput-object v5, v2, v3

    const/16 v5, 0x51

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "MillenniumPastSuffix"

    aput-object v5, v2, v4

    aput-object v6, v2, v3

    const/16 v5, 0x52

    aput-object v2, v0, v5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MillenniumFutureSuffix"

    aput-object v2, v1, v4

    aput-object v7, v1, v3

    const/16 v2, 0x53

    aput-object v1, v0, v2

    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_fi;->CONTENTS:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi;->formatMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected getContents()[[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_fi;->CONTENTS:[[Ljava/lang/Object;

    return-object v0
.end method

.method public getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 2

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi;->formatMap:Ljava/util/Map;

    .line 114
    new-instance v1, Lorg/ocpsoft/prettytime/i18n/Resources_fi$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$$ExternalSyntheticLambda1;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_fi;)V

    invoke-static {v0, p1, v1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ocpsoft/prettytime/TimeFormat;

    return-object p1
.end method

.method synthetic lambda$getFormatFor$0$org-ocpsoft-prettytime-i18n-Resources_fi(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 1

    .line 114
    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;

    invoke-direct {v0, p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;-><init>(Ljava/util/ResourceBundle;Lorg/ocpsoft/prettytime/TimeUnit;)V

    return-object v0
.end method
