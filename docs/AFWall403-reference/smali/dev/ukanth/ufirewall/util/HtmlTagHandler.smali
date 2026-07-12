.class public Ldev/ukanth/ufirewall/util/HtmlTagHandler;
.super Ljava/lang/Object;
.source "HtmlTagHandler.java"

# interfaces
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/util/HtmlTagHandler$Ol;,
        Ldev/ukanth/ufirewall/util/HtmlTagHandler$Ul;,
        Ldev/ukanth/ufirewall/util/HtmlTagHandler$Code;,
        Ldev/ukanth/ufirewall/util/HtmlTagHandler$Center;,
        Ldev/ukanth/ufirewall/util/HtmlTagHandler$Strike;,
        Ldev/ukanth/ufirewall/util/HtmlTagHandler$Table;,
        Ldev/ukanth/ufirewall/util/HtmlTagHandler$Tr;,
        Ldev/ukanth/ufirewall/util/HtmlTagHandler$Th;,
        Ldev/ukanth/ufirewall/util/HtmlTagHandler$Td;,
        Ldev/ukanth/ufirewall/util/HtmlTagHandler$Font;
    }
.end annotation


# static fields
.field private static final bullet:Landroid/text/style/BulletSpan;

.field private static final indent:I = 0xa

.field private static final listItemIndent:I = 0x14


# instance fields
.field final attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lists:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field olNextIndex:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field tableHtmlBuilder:Ljava/lang/StringBuilder;

.field tableTagLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Landroid/text/style/BulletSpan;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    sput-object v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->bullet:Landroid/text/style/BulletSpan;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 47
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->tableTagLevel:I

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->attributes:Ljava/util/HashMap;

    return-void
.end method

.method private varargs end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V
    .locals 4

    const-string v0, "end output"

    .line 299
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 302
    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 304
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    iget v3, p0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->tableTagLevel:I

    if-lez v3, :cond_0

    .line 308
    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->extractSpanText(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v3, p0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 312
    :cond_0
    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    if-eq v1, v2, :cond_2

    if-eqz p3, :cond_1

    const-string p2, "\n"

    .line 318
    invoke-interface {p1, p2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v2, v2, 0x1

    .line 321
    :cond_1
    array-length p2, p4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget-object v0, p4, p3

    const/16 v3, 0x21

    .line 322
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private extractSpanText(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/CharSequence;
    .locals 2

    .line 333
    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 335
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    .line 337
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 339
    invoke-interface {p1, p2, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 340
    invoke-interface {p1, p2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-object v1
.end method

.method private static getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 348
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p0, v0, v1, p1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 349
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 350
    array-length v0, p1

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 351
    aget-object v2, p1, v1

    invoke-interface {p0, v2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 352
    aget-object p0, p1, v1

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private processAttributes(Lorg/xml/sax/XMLReader;)V
    .locals 5

    .line 108
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "theNewElement"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "theAtts"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "length"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 118
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 119
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->attributes:Ljava/util/HashMap;

    mul-int/lit8 v3, v1, 0x5

    add-int/lit8 v4, v3, 0x1

    .line 127
    aget-object v4, v0, v4

    add-int/lit8 v3, v3, 0x4

    aget-object v3, v0, v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private start(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 2

    .line 289
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x11

    .line 290
    invoke-interface {p1, p2, v0, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private storeTableTags(ZLjava/lang/String;)V
    .locals 2

    iget v0, p0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->tableTagLevel:I

    if-gtz v0, :cond_0

    const-string v0, "table"

    .line 274
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const-string v1, "<"

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    iget-object p1, p0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const-string v0, "/"

    .line 277
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">"

    .line 281
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 136
    invoke-direct {v0, v4}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->processAttributes(Lorg/xml/sax/XMLReader;)V

    const-string v4, "handleTag"

    .line 137
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Opening : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "customFont"

    const-string v5, "td"

    const-string v6, "th"

    const-string v7, "tr"

    const-string v8, "table"

    const-string v9, "strike"

    const-string v10, "s"

    const-string v11, "center"

    const-string v12, "code"

    const-string v13, "li"

    const-string v14, "\n"

    const-string v15, "ol"

    move-object/from16 p4, v4

    const-string v4, "ul"

    move-object/from16 v16, v5

    const/4 v5, 0x1

    if-eqz v1, :cond_e

    .line 143
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    iget-object v3, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 144
    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 145
    :cond_0
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    iget-object v3, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 146
    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    .line 147
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 148
    :cond_1
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    const/4 v5, 0x0

    if-eqz v13, :cond_4

    .line 149
    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-interface {v3, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_2

    .line 150
    invoke-interface {v3, v14}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    :cond_2
    iget-object v6, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 152
    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 153
    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 154
    new-instance v4, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Ol;

    invoke-direct {v4, v5}, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Ol;-><init>(Ldev/ukanth/ufirewall/util/HtmlTagHandler$Ol-IA;)V

    invoke-direct {v0, v3, v4}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    iget-object v4, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    .line 155
    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    const-string v4, ". "

    invoke-interface {v3, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v3, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    .line 156
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 157
    :cond_3
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 158
    new-instance v4, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Ul;

    invoke-direct {v4, v5}, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Ul;-><init>(Ldev/ukanth/ufirewall/util/HtmlTagHandler$Ul-IA;)V

    invoke-direct {v0, v3, v4}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 160
    :cond_4
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 161
    new-instance v4, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Code;

    invoke-direct {v4, v5}, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Code;-><init>(Ldev/ukanth/ufirewall/util/HtmlTagHandler$Code-IA;)V

    invoke-direct {v0, v3, v4}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 162
    :cond_5
    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 163
    new-instance v4, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Center;

    invoke-direct {v4, v5}, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Center;-><init>(Ldev/ukanth/ufirewall/util/HtmlTagHandler$Center-IA;)V

    invoke-direct {v0, v3, v4}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 164
    :cond_6
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_0

    .line 166
    :cond_7
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 167
    new-instance v4, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Table;

    invoke-direct {v4, v5}, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Table;-><init>(Ldev/ukanth/ufirewall/util/HtmlTagHandler$Table-IA;)V

    invoke-direct {v0, v3, v4}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    iget v4, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->tableTagLevel:I

    if-nez v4, :cond_8

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const-string v4, "table placeholder"

    .line 172
    invoke-interface {v3, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    :cond_8
    iget v3, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->tableTagLevel:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->tableTagLevel:I

    goto/16 :goto_4

    .line 176
    :cond_9
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 177
    new-instance v4, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Tr;

    invoke-direct {v4, v5}, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Tr;-><init>(Ldev/ukanth/ufirewall/util/HtmlTagHandler$Tr-IA;)V

    invoke-direct {v0, v3, v4}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 178
    :cond_a
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 179
    new-instance v4, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Th;

    invoke-direct {v4, v5}, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Th;-><init>(Ldev/ukanth/ufirewall/util/HtmlTagHandler$Th-IA;)V

    invoke-direct {v0, v3, v4}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_b
    move-object/from16 v4, v16

    .line 180
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 181
    new-instance v4, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Td;

    invoke-direct {v4, v5}, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Td;-><init>(Ldev/ukanth/ufirewall/util/HtmlTagHandler$Td-IA;)V

    invoke-direct {v0, v3, v4}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_c
    move-object/from16 v4, p4

    .line 182
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "handeling font tag : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "HtmlTagHandler"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v4, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Font;

    invoke-direct {v4, v5}, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Font;-><init>(Ldev/ukanth/ufirewall/util/HtmlTagHandler$Font-IA;)V

    invoke-direct {v0, v3, v4}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 165
    :cond_d
    :goto_0
    new-instance v4, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Strike;

    invoke-direct {v4, v5}, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Strike;-><init>(Ldev/ukanth/ufirewall/util/HtmlTagHandler$Strike-IA;)V

    invoke-direct {v0, v3, v4}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_e
    move-object/from16 v5, p4

    move-object/from16 v1, v16

    .line 188
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_f

    iget-object v1, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 189
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_4

    .line 190
    :cond_f
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_10

    iget-object v1, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 191
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v1, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    .line 192
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_4

    .line 193
    :cond_10
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 p4, v5

    const/4 v5, 0x0

    if-eqz v13, :cond_18

    iget-object v1, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 194
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 195
    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_11

    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v6, 0xa

    if-eq v1, v6, :cond_12

    .line 196
    invoke-interface {v3, v14}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    :cond_11
    const/4 v4, 0x1

    const/16 v6, 0xa

    :cond_12
    :goto_1
    iget-object v1, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 200
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-le v1, v4, :cond_13

    sget-object v1, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->bullet:Landroid/text/style/BulletSpan;

    .line 201
    invoke-virtual {v1, v4}, Landroid/text/style/BulletSpan;->getLeadingMargin(Z)I

    move-result v1

    rsub-int/lit8 v1, v1, 0xa

    iget-object v4, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 202
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    const/4 v6, 0x2

    if-le v4, v6, :cond_14

    iget-object v4, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 205
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    sub-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x14

    sub-int/2addr v1, v4

    goto :goto_2

    :cond_13
    const/4 v6, 0x2

    const/16 v1, 0xa

    .line 208
    :cond_14
    :goto_2
    new-instance v4, Landroid/text/style/BulletSpan;

    invoke-direct {v4, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 209
    const-class v1, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Ul;

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Landroid/text/style/LeadingMarginSpan$Standard;

    iget-object v8, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 210
    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x14

    invoke-direct {v7, v8}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    aput-object v7, v6, v5

    aput-object v4, v6, v9

    .line 209
    invoke-direct {v0, v3, v1, v5, v6}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_15
    const/4 v9, 0x1

    iget-object v1, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 212
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 213
    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_16

    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v4, 0xa

    if-eq v1, v4, :cond_16

    .line 214
    invoke-interface {v3, v14}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    :cond_16
    iget-object v1, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 216
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    sub-int/2addr v1, v9

    mul-int/lit8 v1, v1, 0x14

    iget-object v4, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 217
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    const/4 v6, 0x2

    if-le v4, v6, :cond_17

    iget-object v4, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 219
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    sub-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x14

    sub-int/2addr v1, v4

    .line 221
    :cond_17
    const-class v4, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Ol;

    const/4 v13, 0x1

    new-array v6, v13, [Ljava/lang/Object;

    new-instance v7, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-direct {v7, v1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    aput-object v7, v6, v5

    invoke-direct {v0, v3, v4, v5, v6}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_18
    const/4 v13, 0x1

    .line 223
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 224
    const-class v1, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Code;

    new-array v4, v13, [Ljava/lang/Object;

    new-instance v6, Landroid/text/style/TypefaceSpan;

    const-string v7, "monospace"

    invoke-direct {v6, v7}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    invoke-direct {v0, v3, v1, v5, v4}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 225
    :cond_19
    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 226
    const-class v1, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Center;

    new-array v4, v13, [Ljava/lang/Object;

    new-instance v6, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v6, v7}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    aput-object v6, v4, v5

    invoke-direct {v0, v3, v1, v13, v4}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 227
    :cond_1a
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto/16 :goto_3

    .line 229
    :cond_1b
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget v1, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->tableTagLevel:I

    sub-int/2addr v1, v13

    iput v1, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->tableTagLevel:I

    if-nez v1, :cond_1c

    iget-object v1, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_4

    .line 238
    :cond_1c
    const-class v1, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Table;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v5, v4}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 240
    :cond_1d
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 241
    const-class v1, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Tr;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v5, v4}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 242
    :cond_1e
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 243
    const-class v1, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Th;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v5, v4}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 244
    :cond_1f
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 245
    const-class v1, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Td;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v5, v4}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_20
    move-object/from16 v1, p4

    .line 246
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->attributes:Ljava/util/HashMap;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_23

    .line 248
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_23

    iget-object v1, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->attributes:Ljava/util/HashMap;

    const-string v6, "size"

    .line 249
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->attributes:Ljava/util/HashMap;

    .line 250
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "Attribute"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->attributes:Ljava/util/HashMap;

    .line 251
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v1, v4

    :cond_21
    iget-object v1, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->attributes:Ljava/util/HashMap;

    const-string v6, "color"

    .line 253
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->attributes:Ljava/util/HashMap;

    .line 254
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "Attribute"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->attributes:Ljava/util/HashMap;

    .line 255
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "#"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 256
    const-class v1, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Font;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v8, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    aput-object v8, v7, v5

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v8, v0, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->attributes:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v6, 0x1

    aput-object v4, v7, v6

    invoke-direct {v0, v3, v1, v5, v7}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto :goto_4

    :cond_22
    const/4 v6, 0x1

    .line 259
    const-class v1, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Font;

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v7, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    aput-object v7, v6, v5

    invoke-direct {v0, v3, v1, v5, v6}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto :goto_4

    :cond_23
    const/4 v6, 0x1

    .line 262
    const-class v1, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Font;

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v7, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    aput-object v7, v6, v5

    invoke-direct {v0, v3, v1, v5, v6}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto :goto_4

    :cond_24
    :goto_3
    const/4 v6, 0x1

    .line 228
    const-class v1, Ldev/ukanth/ufirewall/util/HtmlTagHandler$Strike;

    new-array v4, v6, [Ljava/lang/Object;

    new-instance v6, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v6}, Landroid/text/style/StrikethroughSpan;-><init>()V

    aput-object v6, v4, v5

    invoke-direct {v0, v3, v1, v5, v4}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 266
    :cond_25
    :goto_4
    invoke-direct/range {p0 .. p2}, Ldev/ukanth/ufirewall/util/HtmlTagHandler;->storeTableTags(ZLjava/lang/String;)V

    return-void
.end method
