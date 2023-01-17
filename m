Return-Path: <usb-storage+bncBDFKTTUNQMNRBQGHTGPAMGQEVUSEURI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x648.google.com (mail-ej1-x648.google.com [IPv6:2a00:1450:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 0542066D905
	for <lists+usb-storage@lfdr.de>; Tue, 17 Jan 2023 10:00:49 +0100 (CET)
Received: by mail-ej1-x648.google.com with SMTP id nb4-20020a1709071c8400b0084d4712780bsf17622163ejc.18
        for <lists+usb-storage@lfdr.de>; Tue, 17 Jan 2023 01:00:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1673946048; cv=pass;
        d=google.com; s=arc-20160816;
        b=HwjDaddiK2qjmoM4ej9OaIrpuJZKS7ZijtLA2CMC92srq9dpG7sR14+jfVT3FIyKiy
         BiHhQFXbY1SFslKeFIpMAnGgXfxskFsK8om6xOL6ydoWDD5FQD0QkJCpSj/hvCC3t8jv
         0HuFuYOJIlBTa1f8nXi2vSZ+x0RnzNcovaBGN9Vs6I9Cpj+3sxjnMRcIKV/no8iKvz1k
         c0A0KIEP3sJtz0vjM8ZvMx94KxMoyEW/fGeq6npRY04aCoMtMpdfdAXbn+KKEgSp0451
         BxoaqdPMEvqA7PigbNb9S70J+GCzWwPjJX9KaWpdq3UHkRR8x7FX3J5snKZ/ATLrTdSZ
         fJvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=EOkIYSunHy914ernVsOv8J6u21Wgn0wV1yn4gZPafdM=;
        b=eAi2Hhp9RBgeD8v9YjIF426BU/IzAyFUCVk1ZN7WiDWwGMz7KSjr8x7zHb35E+HzZ3
         FOd2TOIJrgPTt6leLSXOg/nVV7R1oDIVgtNKtwO8MNlpS9S7WbzhmU8s5MMM/xTWul+B
         3R8oEmW8Ey4hSatE533/dgLMDVbO2RUJgSgOUXtuCpYASo4eFkHNT70MjvS9jM93iobP
         X+EkXKmvmoN/E36BNuRbqaPXZ3XR2jqwFFv/HvKfzkLgzn4wt48BpTJN7c2G9pH10+hs
         LSw2mmcKANMCq0TrM/+xqHGAHOmpjh0IZz1KmZdGTeoY8IFdojcHTj2EFkKNX7X6KadP
         89ag==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=XS5fKgls;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EOkIYSunHy914ernVsOv8J6u21Wgn0wV1yn4gZPafdM=;
        b=MvqxnOvl4pIcVrryDlwsZbzlpNKKm81XeP9A3w+V/p0t5K5VMxt+2HhSk6vhaDKj/J
         8rWDn/Qe/1NC1WQN3lPxTZKlYmZRURQQ3Uy769XHqn3n9V/r71H9xYAx4E7qgZjtWRwN
         7FLSQw1rPKmg8oy5SzaWfwoezx7Td0gAd9KpY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EOkIYSunHy914ernVsOv8J6u21Wgn0wV1yn4gZPafdM=;
        b=4nBHFFdmK31gcoC/42TXlenUCAS3buyD6U5X0D7vsvYkhDahFmiNJ43Ghy1ChoILs2
         /Tq2FlqLBZRPLzlkjYMVqgIrQ93wzUPvd/IKjY23BxCb0vILffKbhbPfE1tYTlfOg+a7
         dr4SFJlyOUnpdRDEbnsx2FcFziQM2XCk9I4BzVZODlqg8doeATnc+H0bwAdWFl1KKuQ0
         k5MylQHlHp9WOmouuAKS7hYJwlYMDyQOirYvdI1uOtcQ5aC+me4SYkzxa5TVESmJZZxf
         P+iZLxcAZoXvaC1GBHXde2tijh/yoAQYXavpm/RlYR+o/MHMRTaegvvCfJJQMsaEflc4
         4QgA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AFqh2kqz4ZprL3N/icdVJNGi20YMnvidO/NaVLhjwTlM+EfhJixAOnad
	iNiu9Ph5AVNy8ywYrrOPyV4hpQ==
X-Google-Smtp-Source: AMrXdXv5Bzh2aZO/o22Remb6C0ruhK5yvedCNaYAdVC80wAnEtRu939ke5ZJ0coGtxC+jV90ZZZsSA==
X-Received: by 2002:a05:6402:1b11:b0:49d:1731:7a66 with SMTP id by17-20020a0564021b1100b0049d17317a66mr272982edb.185.1673946048447;
        Tue, 17 Jan 2023 01:00:48 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:f2c6:b0:7c1:2050:cc5f with SMTP id
 gz6-20020a170906f2c600b007c12050cc5fls8681201ejb.0.-pod-prod-gmail; Tue, 17
 Jan 2023 01:00:46 -0800 (PST)
X-Received: by 2002:a17:906:4950:b0:870:5ed6:74af with SMTP id f16-20020a170906495000b008705ed674afmr6409760ejt.77.1673946046795;
        Tue, 17 Jan 2023 01:00:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1673946046; cv=none;
        d=google.com; s=arc-20160816;
        b=tV3QB98JpS+engGbcJ+r/ME1TwG7SqRNdG+uwixkwX7TEEEHjfYWhYbsGpO9SHkOEf
         41xgqE5r+CPGUCcefdzR+5OlG1RvhhrhjZDU/XZ11+SPJYtEwREAXTB9HF97fdVvpMZe
         AAJIhkNiUis6eV+nhBIQ4vqfOqlZ/Scoc8tJrOKaTln/geGbpl7j7QwscmbMiEFxbOXy
         di8Jz/beNUzfuMKgzpZRwOc2CsWJbYI0DD6UZ3uQyVqffVOMY8yHy2g7WP1YlJVKB8IX
         A4MKqsOMujZe7VKKhVxOMy0M1pLJubF+5oMQ/a0pVeYl3TS9ZqE+2e+4x3uy/us/5xEk
         7NEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NI10LlWiYdeHfpEZqL1lmcR2D8Sybx5E4NUlJpcgjew=;
        b=qoJkLFxVjWC/K8yoINoZKQtiN8jeFcVKnkqTQxZZah0mx+qKzz8IcOM7Nh5gUC9TtT
         NIRNR52VlZQ90eeNUwc3sL219c1lN2saP4nZsBixRRRUwoDjH88DNS0qqmikLW6EAKFM
         Iw0/IVCZgYRmEgfCRtKFCV4QD0S2l2/3TDwgPvBD3r286wjxUyfxMaAhILxGzvHUO5Mb
         2010ANbXALeLqtVl65cV4XBMD74+PHaqTdZn2J6yTKPd/ZV3FmzcU8P4iyWPBBoYXw/g
         cvrVPKZLNNaXByIphONL4sw2BUSnjjNh7xXMMMyJ7aV3C1hbQ1jiQE0Axd6ey9bKS6zZ
         AeAA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=XS5fKgls;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id s12-20020a508dcc000000b00489713d56d3sor17279587edh.48.2023.01.17.01.00.46
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 17 Jan 2023 01:00:46 -0800 (PST)
Received-SPF: pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:6402:1002:b0:49a:1676:4280 with SMTP id
 c2-20020a056402100200b0049a16764280mr233814edu.16.1673946046406; Tue, 17 Jan
 2023 01:00:46 -0800 (PST)
MIME-Version: 1.0
References: <2mw02fh6hzd-2mw3w8xfngq@nsmail7.0.0--kylin--1>
 <CAD14+f1p3j3WJUYshneH7A38b8JsiXjtScESB2uOQ-ZyBi57tg@mail.gmail.com>
 <CAD14+f1ebzviMF-pi0ryKU8cRPWp2BqV2dwiXOFjeM30eqrwOg@mail.gmail.com>
 <CAD14+f3De+0oPaq0hOo0D+siTvZDNnBXg7Qg6fKNDh63zVh8Lg@mail.gmail.com>
 <111d7b42-5e85-58f5-0645-66749e754673@suse.com> <CAD14+f3nHd3tSFwfpLkFfQOAAg8w9soRTf7F53Bj_UsCmN9+ow@mail.gmail.com>
 <d01fed62-dacd-b3a8-c138-73f6093f58ff@suse.com>
In-Reply-To: <d01fed62-dacd-b3a8-c138-73f6093f58ff@suse.com>
From: Juhyung Park <qkrwngud825@gmail.com>
Date: Tue, 17 Jan 2023 18:00:34 +0900
Message-ID: <CAD14+f2+U7ap_YCu+Cq8+UNxz--OxcEZE_oiJWqU7n8---u2JQ@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH] Revert "usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS"
To: Oliver Neukum <oneukum@suse.com>
Cc: =?UTF-8?B?5pu+57qi546y?= <zenghongling@kylinos.cn>, 
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	gregkh <gregkh@linuxfoundation.org>, stern <stern@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: qkrwngud825@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=XS5fKgls;       spf=pass
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

On Tue, Jan 17, 2023 at 5:34 PM Oliver Neukum <oneukum@suse.com> wrote:
>
>
>
> On 17.01.23 09:18, Juhyung Park wrote:
>
> Hi,
>
> > I'm not sure if this is worthy enough to write in the commit message,
> > let me know what you think.
> > Maybe link the relevant lore.kernel.org discussions directly into the
> > commit message?
>
> By any means. The patch is the best you can do. I see and appreciate it.
> It is still ugly. Yet, if there is no better way, so be it. But this
> needs an extensive justification in the change log.
> Please rather be wordier than you think necessary than too short.
>
> I'll ack it.

Thanks again for your input.

I've posted v2 here:
https://lore.kernel.org/all/20230117085154.123301-1-qkrwngud825@gmail.com/

I've added cc to stable as well, forgot that for v1.

Thanks, regards.

>
>         Regards
>                 Oliver
>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAD14%2Bf2%2BU7ap_YCu%2BCq8%2BUNxz--OxcEZE_oiJWqU7n8---u2JQ%40mail.gmail.com.
