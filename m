Return-Path: <usb-storage+bncBD26DNHQRAJRB2ODYKMAMGQERAEZABI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 247445A9671
	for <lists+usb-storage@lfdr.de>; Thu,  1 Sep 2022 14:13:35 +0200 (CEST)
Received: by mail-pg1-x546.google.com with SMTP id r74-20020a632b4d000000b0041bc393913esf8556134pgr.10
        for <lists+usb-storage@lfdr.de>; Thu, 01 Sep 2022 05:13:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662034410; cv=pass;
        d=google.com; s=arc-20160816;
        b=mTW8Oo4zK5qdCkWpQLE3+C/Lg7nv4J6g7MGFTiDju4ZttMRNKECHSP/qXQntGyWiNI
         3p5oqjSB14KUewZOsGs/5bhyCjl55QJNzGQzMJXCDeoLSD1PK4qz7qVVJP0xEOvFIA3Q
         WWhdF2DF0lCL2CqCg3o3W0OPF/cBlfl99edS3VDB1hFj9bfBG8vKt3yZk57YC6obpTki
         by61lgXB5uT4ADy60aFeLPkztWIJf2AJstrvFg3AcLwlHOe9OJs4LSEIzfTQwo+QE3rY
         80wXjSoAVQV1V0vea0XgvZIetyAtl5TN7REQJT/UyjY1mYcjkhfq0Hv1Jn2AVWUN+icC
         jT4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:mime-version:references
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=EuYbjAgqD6HMorgcTCL7Qc6SzEj2h7C94HkFcgAuF8Q=;
        b=gXstLPrdVYE7eZU2QDFZXFE+xqmoYotoKCWK5ZMXaN90kC2a84JH4GLAofJWpsKfhp
         9GnY9YA59AtwOlmPVQSTpMcwNkOXpCbadixPGG9ujfc1rLZ7JqsNO6SBUFfvdOe6Ferf
         rbPE6HEzT6EIaLpzdSjPHptsc2Tw62K+8Gg124vdXbndIe6Ebkqs6grw/oMHbsFgbzo7
         cLGonntMBceeZeuOMNRMMg8xu37+8/HIMPzwE1O4XEAELqxkYonyP2A7hRo/P8OcTqSk
         KyJWPW3tyfTZnR5LoZ78rj/Iv2ptEQ/6CzRSAXAuPAJE6U2Kh+QevwIhotYaFfbJRWvK
         z90w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=oEi9Z6+t;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.113 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:mime-version:references:subject:cc:to
         :from:date:sender:from:to:cc:subject:date;
        bh=EuYbjAgqD6HMorgcTCL7Qc6SzEj2h7C94HkFcgAuF8Q=;
        b=fweYa3QWXqXWgWnIikBSpGKuTGgVHO77ZfQGQ9F3FD1U6bZSq4LDjt+sNK6vNRQcPF
         RP2COOjnYXjc7oN77n+FumpevxO/qnWhWDv36Eft6fHAn7jlb9NHZ9gBBSPlNjK0I1tj
         EvRiJh/9q4wfixNSlYg+sfeTSN3Oh8g+Tg/bA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id
         :mime-version:references:subject:cc:to:from:date:x-gm-message-state
         :sender:from:to:cc:subject:date;
        bh=EuYbjAgqD6HMorgcTCL7Qc6SzEj2h7C94HkFcgAuF8Q=;
        b=U/fhTObANxxUFDdahNuywh6ko7inniWzjMZzuNHi750KiOtykQQ6b5iFeHkpy7x7G+
         6zV0JZ3JNgfezXUSpuhNblEdjRYYVfNfGslp4Oi3ZEXRZMYzLDem5knz3Sn/w3KGThpb
         NiL1fZUPEtZcX0++eQj0CBWGhkcaoSPY9AO4CyQKHE4jmH946SsWVMAvyPKT5RTmvKr6
         +sVGEz/zfilvST/MuB8knSj3WDAIDRo9MR7n7TfE8gIGDFOEf5XmwGMQnP3+ZQ4u6uOp
         vqewiBlYr0r3tfM9NyPcvb+8gi8RNkTU0m2oB/VM6GLMt9xXIQOMo45wFd6bVIfHK19O
         DryA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1rNV8KzTejJ63VriOx7sMATzeB4IRV6EQyAtfe5Xwq2B/orwwg
	PQJs308x6NG5KeqM2KNIqep80w==
X-Google-Smtp-Source: AA6agR7yobMVNwKlkZ9bQlbT3hYg1qhrMIiEpOqD107GTUFYPnvuawtwK+4NdtiWgJ6r9kYYgpjUrA==
X-Received: by 2002:a05:6a00:180b:b0:536:816b:f770 with SMTP id y11-20020a056a00180b00b00536816bf770mr31406825pfa.3.1662034409232;
        Thu, 01 Sep 2022 05:13:29 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:85c8:0:b0:41d:6d38:1d40 with SMTP id u191-20020a6385c8000000b0041d6d381d40ls1040135pgd.7.-pod-prod-gmail;
 Thu, 01 Sep 2022 05:13:28 -0700 (PDT)
X-Received: by 2002:a05:6a00:e16:b0:537:40a7:b095 with SMTP id bq22-20020a056a000e1600b0053740a7b095mr31240226pfb.64.1662034408258;
        Thu, 01 Sep 2022 05:13:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662034408; cv=none;
        d=google.com; s=arc-20160816;
        b=gsa6sRdtOdY6GUKBKJhU953KvDA8gUuF+XSiYqWxitPa700HD6nW6XglWaKm0A/p9r
         BDEOMzDiQ4OQYsqbmsHyR+S4lk9yZqbrP/2fvN0XsQ8xz5fEynE6Sj9RmaxD9cPGCWk+
         f1IPITq2ZIHmk+xijSQg16RHDjZ9kggyeTsSXOFPnvLg49VZA6lE/YdrBcxO4JozUZbz
         QmYjX1I/DAS3eXVJT/v86QpPnXw5RVu89UcGq6nnGB92dZFHcraEmmSIQYWZO9GIx1j3
         Zh+XOENb/+piNU819aJU2YugTM42R6nBiq7+EyYUOZBwhvBYBwEDoCU4Sr8IN1wLCUZs
         y6qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:mime-version:references:subject:cc:to:from:date
         :dkim-signature;
        bh=7oqmzdebo6mC8HQqCXciJ2oMqYTz3jUViiWbZdki/nI=;
        b=MXmtZHMEIVcoxNt2wXaDs86eIx/N63A15gUHev1e2ecQbFtrBNOeGgbYn9VYcwL2TI
         jynJh7DhgDhLI1bSZkuM2qnR/u1kofDU3EVmBtrWA6ZnKPJFm9Br5VGCbuSJyDdup2fs
         r18K6zbcZpcxGtD0zrr3NCat7PK77N399b2XLv/k7wPyDtw2acREseZwnMGFzSitKnR1
         xsjr8OlocLzXlSGS3XxnvWsdnkadwgx8rUwCKRBks2Ls3e7+JIna5P/wHL3SKYFvjbOP
         XBw9FzqBY6/RKV+OmcmYNsTilizZO7dx44DGr9jo7UDgpj5CvTy6bF7J/34yZi5Qko8W
         1uEw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=oEi9Z6+t;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.113 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
Received: from m15113.mail.126.com (m15113.mail.126.com. [220.181.15.113])
        by mx.google.com with ESMTP id q21-20020a17090aa01500b001f2f5069097si4323730pjp.33.2022.09.01.05.13.27
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 01 Sep 2022 05:13:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhongling0719@126.com designates 220.181.15.113 as permitted sender) client-ip=220.181.15.113;
Received: from 0V5ZS2WE6VIK6H0 (unknown [120.204.148.63])
	by smtp3 (Coremail) with SMTP id DcmowAC3L8vhoRBjq1tfAg--.55863S2;
	Thu, 01 Sep 2022 20:13:22 +0800 (CST)
Date: Thu, 1 Sep 2022 20:13:24 +0800
From: "zhongling0719@126.com" <zhongling0719@126.com>
To: gregkh <gregkh@linuxfoundation.org>
Cc: zenghongling <zenghongling@kylinos.cn>, 
	stern <stern@rowland.harvard.edu>, 
	linux-usb <linux-usb@vger.kernel.org>, 
	usb-storage <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: Re: [PATCH v4] uas: add no-uas quirk for Thinkplus
 and Hiksemi usb-storage
References: <1662015653-12976-1-git-send-email-zenghongling@kylinos.cn>, 
	<YxBvNEn0jEEd0lXV@kroah.com>, 
	<409cbf8b.5b1a.182f8682364.Coremail.zhongling0719@126.com>, 
	<YxCDQi3TpXbcwCQ5@kroah.com>
X-Priority: 3
X-GUID: 13F410D8-F3D6-4356-82F8-C635CE2467F0
X-Has-Attach: no
X-Mailer: Foxmail 7.2.16.188[cn]
Mime-Version: 1.0
Message-ID: <202209012012228283526@126.com>
Content-Type: multipart/alternative;
	boundary="----=_001_NextPart758246405142_=----"
X-CM-TRANSID: DcmowAC3L8vhoRBjq1tfAg--.55863S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZry7GF1fZryUGw18GFW3Wrg_yoWfWrb_ua
	n8Ca40qw1DArsruw4DJFsxJrZ8ZrWjqws3XryxXrs3C34SvFsxWayqkwn3XFWUtrW8Jr93
	Wa1qvrWrWrs2vjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xR_K9aPUUUUU==
X-Originating-IP: [120.204.148.63]
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/1tbiYANv0FpEI1+AEAAAsu
X-Original-Sender: zhongling0719@126.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@126.com header.s=s110527 header.b=oEi9Z6+t;       spf=pass
 (google.com: domain of zhongling0719@126.com designates 220.181.15.113 as
 permitted sender) smtp.mailfrom=zhongling0719@126.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=126.com
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

This is a multi-part message in MIME format.

------=_001_NextPart758246405142_=----
Content-Type: text/plain; charset="UTF-8"

Sorry, have fixed the email client to send html email.

Thanks!



zhongling0719@126.com
 
From: Greg KH
Date: 2022-09-01 18:02
To: dd
CC: zenghongling; stern; linux-usb; usb-storage
Subject: Re: Re: [PATCH v4] uas: add no-uas quirk for Thinkplus and Hiksemi usb-storage
 
A: http://en.wikipedia.org/wiki/Top_post
Q: Were do I find info about this thing called top-posting?
A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?
 
A: No.
Q: Should I include quotations after my reply?
 
http://daringfireball.net/2007/07/on_top
 
On Thu, Sep 01, 2022 at 05:35:50PM +0800, dd wrote:
> Hi:
 
Please fix your email client to not send html email, as that is rejected
by the mailing list and will not show up to anyone :(
 
Can you fix that up and respond again?
 
thanks,
 
greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/202209012012228283526%40126.com.

------=_001_NextPart758246405142_=----
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=
=3DISO-8859-1"><style>body { line-height: 1.5; }blockquote { margin-top: 0p=
x; margin-bottom: 0px; margin-left: 0.5em; }body { font-size: 10.5pt; font-=
family: 'Microsoft YaHei UI'; color: rgb(0, 0, 0); line-height: 1.5; }</sty=
le></head><body>
<div><span></span>Sorry, have fixed the email client to send html email.</d=
iv><div><br></div><div>Thanks!</div>
<div><br></div><hr style=3D"width: 210px; height: 1px;" color=3D"#b5c4df" s=
ize=3D"1" align=3D"left">
<div><span><div style=3D"MARGIN: 10px; FONT-FAMILY: verdana; FONT-SIZE: 10p=
t"><div>zhongling0719@126.com</div></div></span></div>
<blockquote style=3D"margin-Top: 0px; margin-Bottom: 0px; margin-Left: 0.5e=
m; margin-Right: inherit"><div>&nbsp;</div><div style=3D"border:none;border=
-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm"><div style=3D"PADDING-R=
IGHT: 8px; PADDING-LEFT: 8px; FONT-SIZE: 12px;FONT-FAMILY:tahoma;COLOR:#000=
000; BACKGROUND: #efefef; PADDING-BOTTOM: 8px; PADDING-TOP: 8px"><div><b>Fr=
om:</b>&nbsp;<a href=3D"mailto:gregkh@linuxfoundation.org">Greg KH</a></div=
><div><b>Date:</b>&nbsp;2022-09-01&nbsp;18:02</div><div><b>To:</b>&nbsp;<a =
href=3D"mailto:zhongling0719@126.com">dd</a></div><div><b>CC:</b>&nbsp;<a h=
ref=3D"mailto:zenghongling@kylinos.cn">zenghongling</a>; <a href=3D"mailto:=
stern@rowland.harvard.edu">stern</a>; <a href=3D"mailto:linux-usb@vger.kern=
el.org">linux-usb</a>; <a href=3D"mailto:usb-storage@lists.one-eyed-alien.n=
et">usb-storage</a></div><div><b>Subject:</b>&nbsp;Re: Re: [PATCH v4] uas: =
add no-uas quirk for Thinkplus and Hiksemi usb-storage</div></div></div><di=
v><div>&nbsp;</div>
<div>A: http://en.wikipedia.org/wiki/Top_post</div>
<div>Q: Were do I find info about this thing called top-posting?</div>
<div>A: Because it messes up the order in which people normally read text.<=
/div>
<div>Q: Why is top-posting such a bad thing?</div>
<div>A: Top-posting.</div>
<div>Q: What is the most annoying thing in e-mail?</div>
<div>&nbsp;</div>
<div>A: No.</div>
<div>Q: Should I include quotations after my reply?</div>
<div>&nbsp;</div>
<div>http://daringfireball.net/2007/07/on_top</div>
<div>&nbsp;</div>
<div>On Thu, Sep 01, 2022 at 05:35:50PM +0800, dd wrote:</div>
<div>&gt; Hi:</div>
<div>&nbsp;</div>
<div>Please fix your email client to not send html email, as that is reject=
ed</div>
<div>by the mailing list and will not show up to anyone :(</div>
<div>&nbsp;</div>
<div>Can you fix that up and respond again?</div>
<div>&nbsp;</div>
<div>thanks,</div>
<div>&nbsp;</div>
<div>greg k-h</div>
</div></blockquote>
</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/202209012012228283526%401=
26.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/a/=
lists.one-eyed-alien.net/d/msgid/usb-storage/202209012012228283526%40126.co=
m</a>.<br />

------=_001_NextPart758246405142_=------

