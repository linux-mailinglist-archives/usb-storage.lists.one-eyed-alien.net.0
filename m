Return-Path: <usb-storage+bncBD26DNHQRAJRBCGF56MAMGQECCNOWGQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BB05B437A
	for <lists+usb-storage@lfdr.de>; Sat, 10 Sep 2022 03:04:11 +0200 (CEST)
Received: by mail-pj1-x1048.google.com with SMTP id v18-20020a17090a899200b00200a2c60f3asf4052764pjn.5
        for <lists+usb-storage@lfdr.de>; Fri, 09 Sep 2022 18:04:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662771849; cv=pass;
        d=google.com; s=arc-20160816;
        b=mC5v6rIh32eX6DxmrFmkEtpD4kX811U3bpchII8P7NLIkBRLpUMojcqUt6+VU4R8nN
         f+7DVLDdfG+ovQwvZMo3btougRAAokxf77ze9Ep4XTD1nVRZKIPUdju7LChy9cRLzAWv
         JewOhqIuRvAb/vgVa1gPIHod3NeaFzKogkxqVP6hEQhhoI0HbIMT6ILkV/NWeiliVWt8
         2AVRexnxGYEtxNylMWr4IWcbsBIdv35yqs0L4z9xiq6qbavfcSzPx1Ga4vVuMM1fRmF9
         uxyM/e67NmS564s13uer0dqpdxHj7VmgrU+gppupbVHFdfiLydhXpFFflYHFedc+QyOi
         IQCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:mime-version:references:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wes+de83nFKD5S4pkvr/j9DJbVXBgk5/f7HCByx4hLw=;
        b=lrqPxU1ICuqshfmUkzHaokpGlunbmFVZHbZD25R5UvLx+eaws2omuSTxMuyUbhgZif
         ADY5zRo0I8lbrdXfCohvGtDzFHS6ROdSXPWAGvUfaGM3V28zDKr5gldNe3zHm/8iChwD
         keMBPPeeEs59qF9SGc0CJeJpaZ5H8O5erXFSpS/XDoCg6lrRll7UlzeoXlTK9YgO41Kw
         AX5gBbuezU9mbyDSh1EFA/iWT/rREJuhnvIgpZECywyUVvp+yTg/i7j6t+N1PlSp0AYg
         d5zScH5FKbEWnp+fVkKIuZVijUjgrVwsUy52t9BULzzKt8jLw/UsurDDrWA/rrpox7b6
         Gr1Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=kX2h5vH3;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.112 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:message-id:mime-version
         :references:subject:cc:to:from:date:sender:from:to:cc:subject:date;
        bh=wes+de83nFKD5S4pkvr/j9DJbVXBgk5/f7HCByx4hLw=;
        b=Cw1+NMxnSWTvxrnp+k04ZEA7ccMFvDWBrEKWos26SHTuANkrhI9hGLZahViKlNKNna
         tEBZNlBvDuP0mNT+XquysoVbqqdtAvJjHwRh6i3nKwNvyD5LviXGqr3XNZRcsSp2ULpr
         7CjhbqH4/tM0I2wZTIerRsYErxsBrUJyqxHgo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:message-id:mime-version:references
         :subject:cc:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date;
        bh=wes+de83nFKD5S4pkvr/j9DJbVXBgk5/f7HCByx4hLw=;
        b=IiEIVvPcw9QcDNk2ZHjpmukJ71k6ULbcXSSLfEoiBFUvDBtt9JAip2hjWpmP4x5A1k
         6G5l2KWwl0EJAAyItP10FOABMVAaed886Z5T9w7CQ/Ut1Zm4BQoMZhjJDR5nM1uS2Uh1
         DWbalUpzk7bknTivuFQ/PexnriWYUeH4q5tln0S9upECLT6sD3efKUTQVnzSe3Cr3QS7
         JWn+jMlXGB8RgnDQq+yp0KiS+FeL7ruQxlLrCt9Al7qM5Qko/TFSuo1Tgul6vcaQUr8F
         umGmU9VQ0oU448EKuZqyU59QYeThp1CE6kBiZ/OZryRv85X81SZcywr2cRkvUiwIwOP1
         F2LA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2P3SKAEIWCGYxm4I4mbclUhby9Ju3h3mxF870ILtsVc983pWIo
	4K4MeYuVtDNOPay3cb/Va0rJOw==
X-Google-Smtp-Source: AA6agR6lUxrdcB58USNyHkdUvliJC4e6lIq2ydjvBp7+dINasHN+2od3w+eLQnIJhxNDkQItyd43Gw==
X-Received: by 2002:a17:90b:1c82:b0:1ee:eb41:b141 with SMTP id oo2-20020a17090b1c8200b001eeeb41b141mr12596249pjb.143.1662771849037;
        Fri, 09 Sep 2022 18:04:09 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:8143:0:b0:41a:63e8:2535 with SMTP id t64-20020a638143000000b0041a63e82535ls3131224pgd.2.-pod-prod-gmail;
 Fri, 09 Sep 2022 18:04:08 -0700 (PDT)
X-Received: by 2002:a05:6a00:174f:b0:537:6845:8b1a with SMTP id j15-20020a056a00174f00b0053768458b1amr17325036pfc.68.1662771848143;
        Fri, 09 Sep 2022 18:04:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662771848; cv=none;
        d=google.com; s=arc-20160816;
        b=pmrPzVK29JwDCSsklm9iegB/eBVyoCFq1cF1Z6yb4Fe34GT7ATC73gdiUaPxcHH/Wk
         L1E38ECh9viMPke1YBiibaOJ7BWYEDVdb9ykxu6DaUKzYhgk0cXDUssLsoq8IJBmZDOS
         RClRiLD5aK066lLMFaGg/WSoe9DrqVkPJ9Fkl47o5dhujBKiL2yx9MXSKvVBo1WiD9Ow
         yZp2vXBb0wZVuv/+Tly9JAZUSHtBFDypiV6emZsQmBk78pX1td5jq7ye+YYPFxO1xsOE
         89RCAX2upGKa1J+O0Gzsg0GBVvF2dCzZi0mn1BaxRVpR0s8pAHkTwzAVm3/+dc1p29ZW
         uLpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:mime-version:references
         :subject:cc:to:from:date:dkim-signature;
        bh=TfJi25Z7TnRKUh4yF3zy+OLkAzt/e6EWRrTbx5Ko17Y=;
        b=DWpBWt+nym9nz0AMiZDhXkZZEtuWIh5UpKu1EGNeQEnLLWYdySxo3QdQ2qsnOgRnOs
         YE3sZehOTFlaYAnDpwshyysxCsXTSdsgHFGqv+qTw/i+J0L1MGFde667Og1rmibY/ReR
         e9BwSIJ4LxOj5o2V6fcKF4d1T00n6J6GaQJGdGf1E5+XZUHEwR2e0MPkpbGyznLOWB0j
         0KRW3XefOGGl8XmmUuEiSuC+a6c0/h0p++0gEFkK/5nQM8omzzQ80rfaV+0GRVcw6h4O
         UYdgaW9Lz6imP90ZRbF3sNv4UhcjVZ2rRHP072qq604+zFzeHqHgeWNfwvTYqKY5aptt
         hSCw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=kX2h5vH3;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.112 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
Received: from m15112.mail.126.com (m15112.mail.126.com. [220.181.15.112])
        by mx.google.com with ESMTP id m68-20020a625847000000b00536268c3311si823942pfb.101.2022.09.09.18.04.07
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 09 Sep 2022 18:04:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhongling0719@126.com designates 220.181.15.112 as permitted sender) client-ip=220.181.15.112;
Received: from 0V5ZS2WE6VIK6H0 (unknown [117.143.49.84])
	by smtp2 (Coremail) with SMTP id DMmowACnrrqB4htj5_cLBQ--.28515S2;
	Sat, 10 Sep 2022 09:04:02 +0800 (CST)
Date: Sat, 10 Sep 2022 09:04:04 +0800
From: "zhongling0719@126.com" <zhongling0719@126.com>
To: "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>
Cc: "zenghongling@kylinos.cn" <zenghongling@kylinos.cn>, 
	"Greg KH" <gregkh@linuxfoundation.org>, 
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: Re: [PATCH v4 3/3] uas: ignore UAS for Thinkplus chips
References: <1662720530-32313-1-git-send-email-zenghongling@kylinos.cn>, 
	<YxsucjOnUkb8NxKo@rowland.harvard.edu>, 
	<202209092121245768249@126.com>, 
	<YxuDzEdZX1zrIwOQ@rowland.harvard.edu>
X-Priority: 3
X-GUID: 0C8E818A-4AB4-4711-A9B6-31B417E79DC9
X-Has-Attach: no
X-Mailer: Foxmail 7.2.16.188[cn]
Mime-Version: 1.0
Message-ID: <2022091009030319446573@126.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CM-TRANSID: DMmowACnrrqB4htj5_cLBQ--.28515S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxAFWDKrW3GF4UKr45Gw1kAFb_yoW5KF13pa
	s8tF98Crs5KF1IvFnrtw47AFyYqanYyFW5Kr9IywnrZw4FkFnrtrn8Jr48u347ur48Ww40
	vFWqqFW7Kw4DWaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0pi-6pPUUUUU=
X-Originating-IP: [117.143.49.84]
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/1tbiYB540FpEI7R41QABsz
X-Original-Sender: zhongling0719@126.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@126.com header.s=s110527 header.b=kX2h5vH3;       spf=pass
 (google.com: domain of zhongling0719@126.com designates 220.181.15.112 as
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

I tested many other PID/VID of thinkplus on linux is ok, Only the(0x17ef, 0=
x3899) =C2=A0output error messgage of uas in dmesg ,
not can't work , Later I found it affected the performance,The disk speed i=
s =C2=A0lower =C2=A0than use usb-storage. =C2=A0
Win10 's speed is lower than win7. =C2=A0so say not good on win10.=C2=A0


>I would guess that Windows 7 doesn't use UAS but Windows 10 does. =C2=A0It=
's
>surprising that these devices can be sold nowadays if they don't work
>with Windows 10 -- who would buy them?


>But again, I find it very very hard to believe they do not work properly
>on Windows 10/11/OSX as well as Windows 10 has been out for a very long
>time now and no one would accept such poor performance on those devices.

zhongling0719@126.com
=C2=A0
From:=C2=A0stern@rowland.harvard.edu
Date:=C2=A02022-09-10=C2=A002:19
To:=C2=A0zhongling0719@126.com
CC:=C2=A0zenghongling@kylinos.cn; Greg KH; linux-usb@vger.kernel.org; usb-s=
torage@lists.one-eyed-alien.net
Subject:=C2=A0Re: Re: [PATCH v4 3/3] uas: ignore UAS for Thinkplus chips
On Fri, Sep 09, 2022 at 09:22:25PM +0800, zhongling0719@126.com wrote:
> Sorry , I tested it work well on Win7, not good on Win10.=C2=A0
=C2=A0
I would guess that Windows 7 doesn't use UAS but Windows 10 does.=C2=A0 It'=
s
surprising that these devices can be sold nowadays if they don't work
with Windows 10 -- who would buy them?
=C2=A0
> I don't have Mac OSX system. We always work on linux=C2=A0environment.
> Need I resend the version V5 for patch 3 =C2=A0cancel "acked by" ?
=C2=A0
Greg, do you have an opinion?=C2=A0 I don't feel very strongly about this.
=C2=A0
Alan Stern
=C2=A0
> Thanks!
>
> zhongling0719@126.com
> =C2=A0
> From:=C2=A0Alan Stern
> Date:=C2=A02022-09-09=C2=A020:15
> To:=C2=A0Hongling Zeng
> CC:=C2=A0gregkh; linux-usb; usb-storage; zhongling0719
> Subject:=C2=A0Re: [PATCH v4 3/3] uas: ignore UAS for Thinkplus chips
> On Fri, Sep 09, 2022 at 06:48:50PM +0800, Hongling Zeng wrote:
> > The UAS mode of Thinkplus is reported to fail to work on
> > several platforms with the following error message:
> >
> > [=C2=A0=C2=A0 39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event fo=
r disabled
> >=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 endpoint or incorrect stream ring
> > [=C2=A0=C2=A0 39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000=
000 00000000
> >=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 1b000000 05038000
> >
> > Falling back to USB mass storage can solve this problem, so ignore UAS
> > function of this chip.
> >
> > Acked-by: Alan Stern <stern@rowland.harvard.edu>
> =C2=A0
> I never sent you an Acked-by: for this patch.=C2=A0 In fact, I asked you
> questions about it which you haven't yet answered.
> =C2=A0
> Specifically: How do Windows and Mac OSX work with this drive?
> =C2=A0
> Alan Stern
> =C2=A0
> > Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
> > ---
> > Change for v1
> >=C2=A0 - Change the email real name and the code worng place.
> >
> > Change for v2
> >=C2=A0 -Change spelling error.
> >
> > Change for v3
> >=C2=A0 -Add acked-by
> >
> > Change for v4
> >=C2=A0 -Fix version error
> > ---
> >=C2=A0 drivers/usb/storage/unusual_uas.h | 7 +++++++
> >=C2=A0 1 file changed, 7 insertions(+)
> >
> > diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/un=
usual_uas.h
> > index 8a18d58..156e89c 100644
> > --- a/drivers/usb/storage/unusual_uas.h
> > +++ b/drivers/usb/storage/unusual_uas.h
> > @@ -198,6 +198,13 @@ UNUSUAL_DEV(0x154b, 0xf00d, 0x0000, 0x9999,
> >=C2=A0 USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> >=C2=A0 US_FL_NO_ATA_1X),
> >=C2=A0
> > +/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
> > +UNUSUAL_DEV(0x17ef, 0x3899, 0x0000, 0x9999,
> > +	"Thinkplus",
> > +	"External HDD",
> > +	USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> > +	US_FL_IGNORE_UAS),
> > +
> >=C2=A0 /* Reported-by: Hans de Goede <hdegoede@redhat.com> */
> >=C2=A0 UNUSUAL_DEV(0x2109, 0x0711, 0x0000, 0x9999,
> >=C2=A0 "VIA",
> > --
> > 2.1.0
> >

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/2022091009030319446573%40126.com.
