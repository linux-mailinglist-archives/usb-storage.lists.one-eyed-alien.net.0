Return-Path: <usb-storage+bncBDFKTTUNQMNRBGPN6OOQMGQEQGU7BWI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 8264566388A
	for <lists+usb-storage@lfdr.de>; Tue, 10 Jan 2023 06:24:42 +0100 (CET)
Received: by mail-ed1-x547.google.com with SMTP id e6-20020a056402190600b0048ee2e45daasf6681118edz.4
        for <lists+usb-storage@lfdr.de>; Mon, 09 Jan 2023 21:24:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1673328282; cv=pass;
        d=google.com; s=arc-20160816;
        b=LPZ4nEw4W/asUcAp+iKbDyQscFYYQHeHba1F4LXjx2xl7dTSO+Mp12lT+nJqGff+rv
         DpG2cTss55Dkka4trFL6DCp522a9st5iHRF1NGkuEI1Hm+2JW9nfDL2VzPUH4SMAQ/GQ
         wSuRTfzyHISP5Jddhc2bzwvHaypQVtBbgiuDTZzmDSNAB0nfXjmQy0IhhaVx16hjOGVQ
         CSawFdC+pH9oH7BZR7gG8WmmNmt5MbP/lq+exP8GlZgNnn2STBo9fjn/ADiY4cgDqyt2
         nwc/+FryaaSDqAIt2FNxo2JzNikBbU4Q9GeMXeqzJZcUVNb1p6q7vrhAcdMnBlbR8vB9
         7ikw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=D+4Hko/jSLmX0Wr3Z7wnjSgkp50F6woaJuW+H92ey18=;
        b=zcYowOOoUXwmc5tBHwfEMCR/R7qU7LbrC+NhoPDe01CYyGEBk5nRg7zglIZkrpMccp
         9Yt72AqhKM+srMbX0hcpTB1R7KuJxkfrhmmMxYyKfUWI0e3dEAXb2XWDNDdYVmUXowL7
         kK5cxCQpy9lsfbuEX6TOGZlX/i6pW1AgouPBkc1nLTvh6iAq8YyfhBkMEV6QaGHmh+4i
         +nz9lnGF5sAIThuz+oh0e61WH0Ry8SpN1m1vgqIEQIokrbUFP6VxwmcXFnwVLRjNKH8X
         1s8xv8j6MZUdyZr6aH3lRUtCYiHuwKcJ62EDJKGT32iNgmLY4IkyPwyJqGzeQDk8UlAY
         L1Bg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=TzLZKNn4;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D+4Hko/jSLmX0Wr3Z7wnjSgkp50F6woaJuW+H92ey18=;
        b=ZsthEElMq3v93+6tfgjFZRyRvxVl1oTW2Wv7CvLaA4yNSteLmeHbDGZUQ2s3rT/3du
         vOqwkeQ3UqvUVPsFrudpP/iBbTciIZKHwq12tuMZ6uVPn5rqBJRHW2EdxT6n31+htMho
         xLSQy+DhHOKA9ZRDWDNj/OQfIuFZO/0bXWXjY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D+4Hko/jSLmX0Wr3Z7wnjSgkp50F6woaJuW+H92ey18=;
        b=dafIKXdN2ke6LhL80J2diKe8lFi9hfBg4+cm0AG8jTpIjSWvWgRdEKl2S4HCiEg5v2
         nUwXC6Yd0c+LtoxCsaR7NVnMurAG+99/PZoCxGTiOHOCqNPRYY4wvUxmth0o87x4CumV
         ZIi8SFpA8G3fv45eX3fPyGF+xtqA2CugscRoxk2l4x7kHznB6EV/NZ19WFhxTQ5OW9d5
         4C3TTjbnxV2qL7EjScgLQvb3NWL4NjIFIFl7sJWGbfgCGff2Zvkpmz0uTIc8yWofGqyw
         tCsQBHCua0n2XsvDgUfZ7V4sRmjQVz+WfW0aTCNOfsWjwWAWhqzwP9zJScmpL373cm3U
         0cZA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AFqh2krEDhyWiWlvgRXoy0eC7X3nQmX3JuHbS1XTiTrqNrBmX4mawub5
	niip5eHq4Wn0styMw/3mrKX7bg==
X-Google-Smtp-Source: AMrXdXtjBiFfd9I+88HO56Y8bGn1AEUM50cVXDbAA/UONZmVs5i7CFdghtgfCMm5s3nuc5HZqnF9uw==
X-Received: by 2002:a17:906:3989:b0:7c1:1f28:afed with SMTP id h9-20020a170906398900b007c11f28afedmr5675020eje.678.1673328282192;
        Mon, 09 Jan 2023 21:24:42 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:26ca:b0:45c:bfd9:fb45 with SMTP id
 x10-20020a05640226ca00b0045cbfd9fb45ls2474248edd.3.-pod-prod-gmail; Mon, 09
 Jan 2023 21:24:40 -0800 (PST)
X-Received: by 2002:aa7:d411:0:b0:492:bf3d:1a1a with SMTP id z17-20020aa7d411000000b00492bf3d1a1amr16704683edq.18.1673328280710;
        Mon, 09 Jan 2023 21:24:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1673328280; cv=none;
        d=google.com; s=arc-20160816;
        b=ySt3/1F8/9hSau1zbrR8EMfNm+AbuO7BDBqxDbzWbGudbkjWIMoLe2MqSnYXV4QPQr
         MPjLKjylkgSXqo35mlO1kMomkHgdD+Zb5YEEvG0xpcv0Me5Qbu/rKG0v3gPlxCuN1d3Z
         /S8VlJDOSMn+DjIXqcYz4qw3cj78Eli1vVgxcCHeGNnS+s8HiiCjAjtEvvJzrhw3KZLx
         cQ7dwMh2R+XlUjgZQlU6MWJGqGtV5JNTJzFD7I3+1MQPjoE+Aeed1hbpA5Wka3r/M7RC
         UhmSoSxvGhOJzmRZWJh1cungTnqyJLh6P36slbmOE+oPTwSl7Gym+o+tJIBmwNVZ+x9i
         r2yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rcILyZnN23z+VxgxsvoaHQodidHb+rZD69kWFA1n68U=;
        b=fM5LippxuQiouNBOrOSSKb3Sy6Vnwlm1/CatJqtFt9h+sFCwa6SsvoPAq2KwgorcSa
         08rzHl7j7VmtBSXqu829QfCW5HSz95sF6YpF5IHQu/axVfsmnqioK9SodN89QdbpBEol
         QhHq1DliADpWZjbKsisk/ZkQXBnMvb8U8OD2TzUWN1RvsI+zAFCknin7UfK1ci4kcXIO
         fvo47huTD9OW0lhi4RYZuvI3Vzu8Vyv49qP19USR1fM4fp8gJq9xBDnViWS1ko5fyVKi
         +K2olfgFEd6q88gc07lG5Djs2shCW6d93y5dc5HI3N1oLtwHiGu3+OT1NJmErmz7XYra
         5n2w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=TzLZKNn4;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id sy14-20020a1709076f0e00b007bdf452b988sor4615200ejc.27.2023.01.09.21.24.40
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 09 Jan 2023 21:24:40 -0800 (PST)
Received-SPF: pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:906:bfe3:b0:7de:e71d:b07f with SMTP id
 vr3-20020a170906bfe300b007dee71db07fmr4082460ejb.479.1673328280192; Mon, 09
 Jan 2023 21:24:40 -0800 (PST)
MIME-Version: 1.0
References: <20230109115550.71688-1-qkrwngud825@gmail.com> <Y7w3UgeJHHcR7O6o@rowland.harvard.edu>
In-Reply-To: <Y7w3UgeJHHcR7O6o@rowland.harvard.edu>
From: Juhyung Park <qkrwngud825@gmail.com>
Date: Tue, 10 Jan 2023 14:24:28 +0900
Message-ID: <CAD14+f1VjH8569zzx+Hn169LbUW3XHJvx9_vq60qk56P36FoyQ@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH] Revert "usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS"
To: Alan Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	gregkh@linuxfoundation.org, zenghongling@kylinos.cn, zhongling0719@126.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: qkrwngud825@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=TzLZKNn4;       spf=pass
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

On Tue, Jan 10, 2023 at 12:48 AM Alan Stern <stern@rowland.harvard.edu> wrote:
>
> On Mon, Jan 09, 2023 at 08:55:50PM +0900, Juhyung Park wrote:
> > This reverts commit e00b488e813f0f1ad9f778e771b7cd2fe2877023.
> >
> > The commit e00b488e813f ("usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS")
> > blacklists UAS for the entire RTL9210 enclosures. Realtek's VendorId is 0x0bda
> > and RTL9210 enclosures reports 0x9210 for its ProductId.
> >
> > The RTL9210 controller was advertised with UAS since its release back in 2019
> > and was shipped with a lot of enclosure products with different firmware
> > combinations.
> >
> > If UAS blacklisting is really required said product (Hiksemi USB3-FW), it
> > should be done without blacklisting the entire RTL9210 products.
>
> We cannot simply revert a patch if it fixes a problem for some devices.
> The devices would then stop working and that would be a regression,
> which is not allowed.

This to me, sounds equivalent to "disable trim on all NVMe SSDs on
'some' vendor because it fixes issues on one reported case, 3 years
after release". More thorough reviews should have taken place to begin
with.

Reading through previous threads for all 7 patch-sets(!), there
apparently was no effort spent in minimizing the affected products,
especially when 0x0bda is blatantly a VendorId for Realtek, or to
avoid using US_FL_IGNORE_UAS at all and try other workarounds, not to
mention Hongling's questionable method of determining whether Windows
uses UAS on it too.

His product name in the commit is also questionable. RTL9210 is a
NVMe-to-USB bridge, but his commit names it "Hiksemi External HDD". I
was unable to find any product online that matches "Hiksemi External
HDD" that could be using a NVMe-to-USB bridge.

Disabling UAS can even workaround a broken hardware, I've seen it
personally happen with a JMS567 controller: the device originally
worked just fine with UAS enabled on both Linux and Windows, later it
started to not work on both platforms and it started working again
under Linux when UAS was disabled. I'd be not surprised if Hongling's
unit is defective.

Unlike US_FL_BROKEN_FUA or US_FL_NO_REPORT_OPCODES, US_FL_IGNORE_UAS
is far more detrimental to both performance and functionality. For
users like me, the original patch is a regression itself as I need
trim to work (which is my topmost concern, rather than just raw
performance).

RTL9210 is an extremely popular NVMe-to-USB bridge controller and the
original patch-set was merged with no real deep thought and reviews
spent into evaluating its effect.

With Hongling not responding to Greg's question for nearly 2 months,
I'm afraid this original patch does more harm than good left
long-term.

Just my two cents, apologies in advance for my strong words.
Thanks, regards

>
> It will be necessary to find some other way of solving this problem.
> For example, a small piece of test code which can safely determine
> whether the firmware can handle UAS.
>
> Alan Stern
>
> > Fixes: e00b488e813f ("usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS")
> > Cc: Alan Stern <stern@rowland.harvard.edu>
> > Cc: Hongling Zeng <zenghongling@kylinos.cn>
> > Signed-off-by: Juhyung Park <qkrwngud825@gmail.com>
> > ---
> >  drivers/usb/storage/unusual_uas.h | 7 -------
> >  1 file changed, 7 deletions(-)
> >
> > diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> > index 251778d14e2d..c7b763d6d102 100644
> > --- a/drivers/usb/storage/unusual_uas.h
> > +++ b/drivers/usb/storage/unusual_uas.h
> > @@ -83,13 +83,6 @@ UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
> >               USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> >               US_FL_NO_REPORT_LUNS),
> >
> > -/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
> > -UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
> > -             "Hiksemi",
> > -             "External HDD",
> > -             USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> > -             US_FL_IGNORE_UAS),
> > -
> >  /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
> >  UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
> >               "Initio Corporation",
> > --
> > 2.39.0
> >

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAD14%2Bf1VjH8569zzx%2BHn169LbUW3XHJvx9_vq60qk56P36FoyQ%40mail.gmail.com.
