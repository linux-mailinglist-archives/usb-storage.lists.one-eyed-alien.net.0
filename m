Return-Path: <usb-storage+bncBDFKTTUNQMNRBUNTTGPAMGQE5RLAY5Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 654B566D7E2
	for <lists+usb-storage@lfdr.de>; Tue, 17 Jan 2023 09:18:26 +0100 (CET)
Received: by mail-ed1-x545.google.com with SMTP id z18-20020a05640235d200b0049d84165065sf5500236edc.18
        for <lists+usb-storage@lfdr.de>; Tue, 17 Jan 2023 00:18:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1673943506; cv=pass;
        d=google.com; s=arc-20160816;
        b=HoIR2Cn1Q67vgLBhubKRupiIHuOcoRXgUYyBGAzWODcoOM8Pk6Q7Iyuv1dRcSTClVa
         0lH876gVKyQwEVlYbEj/bmYrnIVVOX9mRPPW367t9JQtaRRWxxqJUi6bAxH6f/qUU41A
         CkGoRQnR1TLD/MEDupV0rGI66Yllj2y8XlLXZuCOa1XVfsGtf/NabH/+tNHf8770/aDu
         iK+1faOYBPoABvGoRMy7sPiH7usdhU/j8KiOrX+wDNjEVqy301SrPSEA+Riye8OYDxgc
         M1MWkqpt2xFYNv9ooXDaW8lXakHLIp3tbA5wZ7Icl2IHeqtyfPa0PmJPyrKBoytGO0a+
         GRIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=xtxJg6suHiqo3QmlSCLXRlXSLZohNN03oEVekDb3ZhU=;
        b=vTZataRtY16yfOfWBaqwGXRYGy2E/bPHseDkjpCT+aPbZBliaraaFjS9R7anwmdPiZ
         yEY9WKaPbaxgzhS6Na04V1Mj1M7gAeMEFEnoVYe9prRU0Q13A4XwJ4UnPBGZ/ZqYROdQ
         kZ6k9+lxiaesGHfAtyQz1A/J/Tx2xiCjk7hJa0ytBAGb91m2O+BB37CKag8/y3hl1ehp
         yHyjhBgPHK8QnGCYh9XXB7mPpdQuFJCDMqmBlc68jojdYM6Ur6YTJUT8yBofkb9zOa3I
         bJVoDXWtxpf7sjrfBg7dJ1ajW1nHaMQdqnYTUCqjyy1iA2rPWcw46SFeeApupzbY8rW+
         GUCA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="Vma+i/7t";
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xtxJg6suHiqo3QmlSCLXRlXSLZohNN03oEVekDb3ZhU=;
        b=dKM/2sgEbfy2GULOYyByndJgwDQJ+n0HTkkKPvy48Rd691qZu19rxDxUIqQkqqlFrZ
         9pA0MGu53TRB+HbUTf19F/tsRUgLId0/L973RS/m7YEEiuz111it8z5D9mE2ssb8YGU/
         0C7aSOyGXygG7suChYtNF4t5bA3Qdf8wJGovA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xtxJg6suHiqo3QmlSCLXRlXSLZohNN03oEVekDb3ZhU=;
        b=SK+Ju0rM+4n3RIWa4eKEjNMMcwV67TDlgFgiDSrCpZJdnhUmANuAVapTeVuWr1lsjH
         +N+k3fNBHQZI/vsG++HoPNzWJwuOXfTrpo66Yt9CXzSIw/4o6v9Ehh8wgjvp3WcSVcPR
         h2ZvLiJndRwOKJqia8mD66/WHqd0AHB2mVfnHaClYXDus/PzbW8MeysYdeGZPwhmqNME
         JqE4O26ejQQHDDZ5rOwP6U6Iy7Y2B7twewhNZv72Kee4r+gOUyTOCaUGcDb4oZ6+KT+z
         jLig5L7QYpY/XgZ+wvX2fEJDlJXPLeZPz7dPcfBzszeGCmAq/olZoAHvvgPvr/+/IFo1
         ugpg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AFqh2krBTcRRUOfY8xu+s3Goz82EDWh/mc2YLj5vrq7HV3d0wjMAUG9s
	90xIPKthSKjM7eMeqb1gie5pmg==
X-Google-Smtp-Source: AMrXdXuuVQ34qrmoycYwLhPlL6Oy/GAU4D2gUl7/5xkEkrRQoiIQ4I7ZR4eByGkpfvI0fISKjRpZJA==
X-Received: by 2002:a05:6402:214a:b0:49b:6629:a494 with SMTP id bq10-20020a056402214a00b0049b6629a494mr220508edb.271.1673943506101;
        Tue, 17 Jan 2023 00:18:26 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:274b:b0:49e:29ce:a2b with SMTP id
 z11-20020a056402274b00b0049e29ce0a2bls692692edd.0.-pod-prod-gmail; Tue, 17
 Jan 2023 00:18:24 -0800 (PST)
X-Received: by 2002:a05:6402:120d:b0:472:c7fe:475e with SMTP id c13-20020a056402120d00b00472c7fe475emr2201329edw.27.1673943504687;
        Tue, 17 Jan 2023 00:18:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1673943504; cv=none;
        d=google.com; s=arc-20160816;
        b=g/7Jyr18PPUeL0F7PLGQBxRdulXih9o1gjkm4RtQn4qf79qaPWWWitvE0qbwf9r2gF
         EPABVGYHfkqmeSh0Li5ubJMtCyoKjNoANDvd0niA31e2NO40FOYFPMJBY6a0AVry1s0Z
         pyRRaooaO/3JyLgaaPfqtx/EFC+wLEa41M+iVTBAyBp9Kroo3E3ryWztr1zQ7mBwZ4if
         +7N85BRMoO0S0j3dc3WtkdH6btiy9AYpeYzLdGlj4GWLRaKUX5zC/PsJ4ir+W/hB6EnD
         1k6eloT38Sn2UTreObjDghDU1OiUBcuFPIDFPek4n4GIxhwtkpCRiVUu21o++IR3qPid
         CKSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LruPIPXQp1dgJ/y23O3y0R9TQyikAbpza1wRKEEzhGY=;
        b=k7Hn1AYzAHR/QT6h7iLFAeFdIZ3w4iufLJnUxYkPHIaiIOgUZ28IvYw4LalO/6NKFN
         EECN2R039vl/Jj5Q4+MxEdJGeCy2ukH0Pb95u+CZlHzvxP7yt8cuW1CfycwyENiYNY4F
         fcBLIl2ffT/JFVzO0UBgCnf8XqsjEO1jCk+xnENQ+YSh37Pznu7I4zsAuw2UGXXF/Ffn
         mwbvZcEybOeTbcZ66MFaSzApssrerhJGmj/hsm6AsW9yVjQ5TF62lX+UnNAHmBXabmJs
         35KtWnUp9VU5LldtYP8fpvQv0Ri7M9kb9MsIAVJaQmkoOwedtOPG/g4w0TCGeknf1NYh
         bg8A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="Vma+i/7t";
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id c14-20020a509f8e000000b00499b2c0c920sor14458722edf.35.2023.01.17.00.18.24
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 17 Jan 2023 00:18:24 -0800 (PST)
Received-SPF: pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:6402:28a4:b0:485:2bdf:ca28 with SMTP id
 eg36-20020a05640228a400b004852bdfca28mr317129edb.251.1673943504241; Tue, 17
 Jan 2023 00:18:24 -0800 (PST)
MIME-Version: 1.0
References: <2mw02fh6hzd-2mw3w8xfngq@nsmail7.0.0--kylin--1>
 <CAD14+f1p3j3WJUYshneH7A38b8JsiXjtScESB2uOQ-ZyBi57tg@mail.gmail.com>
 <CAD14+f1ebzviMF-pi0ryKU8cRPWp2BqV2dwiXOFjeM30eqrwOg@mail.gmail.com>
 <CAD14+f3De+0oPaq0hOo0D+siTvZDNnBXg7Qg6fKNDh63zVh8Lg@mail.gmail.com> <111d7b42-5e85-58f5-0645-66749e754673@suse.com>
In-Reply-To: <111d7b42-5e85-58f5-0645-66749e754673@suse.com>
From: Juhyung Park <qkrwngud825@gmail.com>
Date: Tue, 17 Jan 2023 17:18:12 +0900
Message-ID: <CAD14+f3nHd3tSFwfpLkFfQOAAg8w9soRTf7F53Bj_UsCmN9+ow@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH] Revert "usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS"
To: Oliver Neukum <oneukum@suse.com>
Cc: =?UTF-8?B?5pu+57qi546y?= <zenghongling@kylinos.cn>, 
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	gregkh <gregkh@linuxfoundation.org>, stern <stern@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: qkrwngud825@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b="Vma+i/7t";       spf=pass
 (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

Hi Oliver,

On Tue, Jan 17, 2023 at 5:09 PM Oliver Neukum <oneukum@suse.com> wrote:
>
>
>
> On 17.01.23 07:16, Juhyung Park wrote:
> > Posted a new patch:
> > https://lore.kernel.org/all/20230117061046.114145-1-qkrwngud825@gmail.com/T/#u
> >
> > This issue has been stalled for way too long. If string-based
> > comparisons are too ugly, we can improve it later when Hongling is
> > more active towards this issue.
>
> Hi,
>
> very well, you really see no other solution?
> If so, could you please enhance the commit log to literally state
> that there is no other way to tell them apart? And then resubmit?

My unit is fine and only Hongling's isn't.

I'm fairly certain that this is not the best way to deal with that
specific defective unit, but unless Hongling actively participates in
debugging and providing more info, the affected users (who have their
completely fine RTL9210 enclosure suddenly have UAS nuked, including
me) suffer more and more.

String-based method is the only way *I* can do to keep Hongling's
working with usb-storage while restoring UAS back to the rest of the
RTL9210 enclosures with limited info Hongling's supplied thus far.

I'm not sure if this is worthy enough to write in the commit message,
let me know what you think.
Maybe link the relevant lore.kernel.org discussions directly into the
commit message?

Thanks, regards

>
>         Regards
>                 Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAD14%2Bf3nHd3tSFwfpLkFfQOAAg8w9soRTf7F53Bj_UsCmN9%2Bow%40mail.gmail.com.
