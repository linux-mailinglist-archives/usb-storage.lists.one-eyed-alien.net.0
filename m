Return-Path: <usb-storage+bncBDFKTTUNQMNRB4UC6COQMGQE5VCJ7SQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFAF6624E3
	for <lists+usb-storage@lfdr.de>; Mon,  9 Jan 2023 12:58:43 +0100 (CET)
Received: by mail-ed1-x547.google.com with SMTP id b15-20020a056402350f00b0048477a5114bsf5052401edd.2
        for <lists+usb-storage@lfdr.de>; Mon, 09 Jan 2023 03:58:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1673265523; cv=pass;
        d=google.com; s=arc-20160816;
        b=V3707s3R265TM3YXXwuj/DiP/sYP0abvxEukvJjmYw3L6DUEl4sByfjJImJ1NSOfGG
         GbmUfC1mJLC3I1cUM3iwtzFgtVMIOm20guT12yFagb66nAvzmkF9CrhOYXqtYiQurPvj
         b/cvUatbYVZ3GZw6OZF+E8Sb2D/k9/CdOZoxPt2yMqeVj6DxSymNPwsoag1kGAZGs6gv
         p48JcpswUFjjOPBGTiIUqn8r+EwhIHoUXRbULvSXBh5Kv8Dk97gsJ8hc661MV/rfmpAk
         dmRY/zQ33IQyR0/3wcrFlhN+05GK3GPny7NfTxj0bTeV9NdHLhr2gqG5eRnmsWSSS0PZ
         CVbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Nlkc79l2SiUCaSvb/SLAiMiElIATu/tRJeishXNMmyM=;
        b=hr4XemHtAjp++FasWomnELSbdEDjYbsxu7Fiu0l/auFQ4Ez05f7kDg9X6P+L2qn7xx
         2xjj8KnqNJV0MpSU5Rh9oMjNsacL3reDYCFH6LwfLEp9o8L6iJ3P3mD29yFJ6jPJCOnT
         lCuqNuuX61hJG8NieATOxMP/eBG0jufro9ii7CXH17egNYgS6Yz9jDhWjLY6Zg8SVTkL
         3XTk5t+SRpISwml10pf/IIZCeYDRqwcoW0dSK9zxFGnQGBSl5nvFf3GhCVEBF8dik8y/
         xRiIA8sNnqjGEEmsb2PBn1l/zpWOP4YjICHhJNahywusSRGjUOP5M6Ar3YNs2u980JTA
         A9Jg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=B8gGu6H+;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nlkc79l2SiUCaSvb/SLAiMiElIATu/tRJeishXNMmyM=;
        b=Hb9/gBh8Pd/4W9tvThiLsju1A1q/4+5vyDgwl9nQi+6sTcz/W8414RXj8qBtoNmiYM
         nxfMZowFthrXKEHRIWaIzbPk02i/2m7Jp86oJRSRoi8YFfDMRfw4jSVt6Hc+XwIrDfKM
         aZqhsA+2l4Adn2y99Qs+Z891D1SA/zmjLQlXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nlkc79l2SiUCaSvb/SLAiMiElIATu/tRJeishXNMmyM=;
        b=7to/f5r6mZuxuhusfImgPhp1CIwJEZpi1tSMSrj+gG8TtmeqdmhkfSIm+cdG4gCmfY
         2myFzN78pMcqqj4k/eDo8yZm/CELMEGi4s2mKcjogmP3kK/gwZ4rbOyDllceLjp1LCiS
         /2cUQhc8ahtjtUDI2gJGJB4+LHYjbJ91W5/7aogyfdewNv3t00/oqhHULJWsJpHbPVPZ
         jRWyAwqjJmAwuFvr3Jz5+79QWu//DQi7XKzrd+jVhBpsI4btGiq9a9DQXef4ZjTLuyD3
         DfYN1CQPDvkKIrbweMIwwFCPAOeA8Q7cunxwD/lS4qnSmbIfA/HqOMXNZ4kN9g0d/dvW
         lUVA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AFqh2kqMad5q6aM+U16olloGt34ZnwBBu0npOfjjDQpyOozjugfeAvvD
	lB4YDV9u95tFCbAPbtvyxO8PYQ==
X-Google-Smtp-Source: AMrXdXsmL27NGWGoy2Hk3zcKkNGJ89wQkKLANSys+gjcSy0Bs9jj01mWRDimcYUzOe+z+QDl/UdoWQ==
X-Received: by 2002:a05:6402:2b9a:b0:498:989a:60c1 with SMTP id fj26-20020a0564022b9a00b00498989a60c1mr673651edb.284.1673265523192;
        Mon, 09 Jan 2023 03:58:43 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:789:b0:84d:4675:1cbe with SMTP id
 l9-20020a170906078900b0084d46751cbels1300169ejc.7.-pod-prod-gmail; Mon, 09
 Jan 2023 03:58:42 -0800 (PST)
X-Received: by 2002:a17:906:17d2:b0:846:fafa:5c77 with SMTP id u18-20020a17090617d200b00846fafa5c77mr46787993eje.48.1673265521891;
        Mon, 09 Jan 2023 03:58:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1673265521; cv=none;
        d=google.com; s=arc-20160816;
        b=SdtsDBkfeo6c+IGm2C646wBcEzzVUcnrnZKahwPJJS5UrZXsOiyEfi5BzjXKYqFkcZ
         lBRvXpfx5Vxju7jGAp1hfF8Wf3MJ7XDH594fWqJ4V2kwpJcdArXCMWitjvpuzyrrr5tC
         v2lOCeSJ/D4U156JJORUT5zBQJuytpOsH9Kf6rPc+AmlHS2Kj/aT5CKTKEChiPC6oKjE
         4g2ArtxfDsoO8gzYqp8q4S9ZIlORhF9KZVEwScZGUhTpnLrNZ106Optza9PbYpXGffGu
         1uNxfp7ACt/z3D29wbJJQ/VmfMAogzNA8N8+msrBXm3ojcrx8IuAaV/cFXei/hSHdU9N
         DYCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sqDs9qTUrNdkIJNHtVrZFUgegfVtGip7cDZN8M5e52o=;
        b=NHA9bX6Sh22jhZ47r5DmV72U4Yw99ehkgjrVVfQ0520KODqVPbEJFh+v2iZ+4tf6mm
         sMTpZRygMfSLYWTItJSu67GuOfk2xev3HnEutRIqS1bzS0SYvCu06yp11ndBLB7Q9qym
         dxzyjGtsBQd/80SJUlphRheYdKKPD8mg5XYfLE+IIyTlTvEq75sjkU+w/kiJoGPdoz85
         r9td/1ihg7sQ0iXrzGK1qr6vVQPefw0bwW9VCaIGVVZCYDKgpjiOSoGsKz20SaAb+OQq
         XiLbxKZD7anedSbrBRsnkaLuaEGR7jE/dUddxkYkBpUoqNMS2kPY0DucJXMFiuuiEdJw
         jQHg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=B8gGu6H+;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id vw16-20020a170907a71000b0073d62c8b286sor3175892ejc.20.2023.01.09.03.58.41
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 09 Jan 2023 03:58:41 -0800 (PST)
Received-SPF: pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:906:f150:b0:84d:2374:4c37 with SMTP id
 gw16-20020a170906f15000b0084d23744c37mr1142030ejb.330.1673265521413; Mon, 09
 Jan 2023 03:58:41 -0800 (PST)
MIME-Version: 1.0
References: <1663210188-5485-1-git-send-email-zenghongling@kylinos.cn>
 <fa0556e5-e154-a4e6-6b18-4996a01d2f10@gmail.com> <Y2uDnUQKCDGzioJN@kroah.com> <2022111215445443712314@126.com>
In-Reply-To: <2022111215445443712314@126.com>
From: Juhyung Park <qkrwngud825@gmail.com>
Date: Mon, 9 Jan 2023 20:58:29 +0900
Message-ID: <CAD14+f3ZHZ8X6CmUf+FcBZ0fmP-G7qi1phVqmCn_KdZJJJgu=Q@mail.gmail.com>
Subject: [usb-storage] Re: Re: [PATCH v6 2/3] usb-storage: Add Hiksemi USB3-FW
 to IGNORE_UAS
To: "zhongling0719@126.com" <zhongling0719@126.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	"stern@rowland.harvard.edu" <stern@rowland.harvard.edu>, 
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: qkrwngud825@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=B8gGu6H+;       spf=pass
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

On Sat, Nov 12, 2022 at 4:46 PM zhongling0719@126.com
<zhongling0719@126.com> wrote:
>
> Hi:
>   This error not happend on all RTL9210,The uas blacklist only for on sale device(0x0bda, 0x9210).

0x0bda is VendorId for Realtek,
0x9210 is ProductId for the entire RTL9210 enclosures.

This patch blacklists UAS for all RTL9210 enclosures.

>
> Thanks!
>
> zhongling0719@126.com
>
> From: Greg KH
> Date: 2022-11-09 18:40
> To: Juhyung Park
> CC: Hongling Zeng; stern; linux-usb; usb-storage; zhongling0719
> Subject: Re: [PATCH v6 2/3] usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS
> On Mon, Oct 31, 2022 at 03:17:48PM +0900, Juhyung Park wrote:
> > Hi,
> >
> > I'm speaking from my own experience but RTL9210 is arguably the most
> > reliable NVMe-to-USB converter available.
> >
> > Compared to solutions from JMicron (multiple revisions) and ASMedia, RTL9210
> > gave the lowest power consumption (from implementing proper power management
> > commands) and the least headache.
> >
> > I personally own multiple enclosures and not one gave a single UAS error
> > from multiple platforms (Android, Intel, AMD) for years, but with this
> > commit now, it effectively disables UAS for all RTL9210 enclosures.
> >
> > Would it be possible to apply this quirk only to a specific firmware
> > (range)? RTL9210 have a lot of possible firmware combinations: https://www.station-drivers.com/index.php/en/component/remository/Drivers/Realtek/NVMe-USB-3.1/lang,en-gb/
> >
> > RTL9210 was available since 2019 and the fact that this quirk came up this
> > late leads me to believe that this is not a widespread issue and it'll be a
> > shame if all of RTL9210s are blacklisted from UAS with Linux from now on :(
> >
> > If any additional information is required, please let me know.
>
> Can you send a revert of this commit so that we can fix this up?
>
> thanks,
>
> greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAD14%2Bf3ZHZ8X6CmUf%2BFcBZ0fmP-G7qi1phVqmCn_KdZJJJgu%3DQ%40mail.gmail.com.
