Return-Path: <usb-storage+bncBDFKTTUNQMNRB5UD6COQMGQESTS2ICA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x645.google.com (mail-ej1-x645.google.com [IPv6:2a00:1450:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id C13B76624EC
	for <lists+usb-storage@lfdr.de>; Mon,  9 Jan 2023 13:00:54 +0100 (CET)
Received: by mail-ej1-x645.google.com with SMTP id qb2-20020a1709077e8200b00842b790008fsf5338725ejc.21
        for <lists+usb-storage@lfdr.de>; Mon, 09 Jan 2023 04:00:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1673265654; cv=pass;
        d=google.com; s=arc-20160816;
        b=tDsyT59viY4O8mjX7s9HvNKioGKMGIK179tFfmEJFin8BTHuaFZ3BVz0n1NpPIl6Dd
         O7OM9D94c6HA0v8jKIDuWGBRXCU6Y8UKbCmcPl4/K0G8N/oZFYNc+9E3J9VxqKfiUG2N
         nVdI+TRkJRmuOFVa4wWHng049PYz9RPbQd163SqnlNNlUJrsz8lLeavI7VLUrziJYlKo
         SHGkkfNhW4lxJIQCitrxBmtUNcHL3umHtmM1nXMWMLurE5LXAo5K4NV3nRNfb0JoWClO
         b8gIli+bHKtUU0GYFjjhlpPlMWsRFP+WGDtOhDCJwgL3uIz7vn7wqsZB8SpW0oEwdNwf
         aOCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=7MvMxRvTBsQcepEsBRBPOZbxpwaaiBc0sGHOwB/XmtM=;
        b=QbeHzda72m6y1Gp+9Y3sZ46EEKS6e/ovTrzqngwoTFdbaXyRSxMPHLBxJUGC8azBdF
         t2kFD1bGt+9gdGQoOt1fDxAyOOU5kDqpaixUPg1RuEp6542Rc2Ibc5P7qF3tBXp3WboI
         Ya4rFTu04cQXt1itNS//+bIr1gVB19O6qbEsixu+EiC8qjoOMBkBvphGOOIUltak/LIB
         VR8bWY+Y3sI3NzbHHx8Q/bNpoFGasd/y0rlrzJKiAVyL6XuVFtbhOZa6xFltR3kQAl3A
         ofj2Gm2Sh+Qbsrqjou0bsTKUonSV5N/EhIfRH7VU7yPdXA20jbNnM7CcI20368RHoPD2
         4m2A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=kRrlj4fQ;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7MvMxRvTBsQcepEsBRBPOZbxpwaaiBc0sGHOwB/XmtM=;
        b=Xl5UDSFBc12+a1n8V2wJCOMojLc2FWyUokNYe305VYvJcFI/qfL8XLuxvj6xLFv+it
         1V0OJOhuytol/cCDNYyJR1zo5buvqXR8wbST4399ZdAJHaIv3kwfRVeef9Vnu3ZEZJlk
         kK/NZHQ7HGy3zKByM6AuerQCKVZDyXEa6pKpI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7MvMxRvTBsQcepEsBRBPOZbxpwaaiBc0sGHOwB/XmtM=;
        b=Ti+ZRSAnDkUDRtWhQbuFKJvuqaJJqBaxc355i3h55ih9jBuGnQPg+v5Uk1KHntmn63
         o2D8j050FLJjRFEV1HMAyMRgBiHmQV861fCP3I8X6k8qEAGmi+ulKPaarkhP+IB0FXC4
         fnuY0UfttKumdRIQZDlBagxajrs3eWLGiamuljEO1OStUvqnQSfNPh2BLbNvvV2nZOT0
         nBAp0/NZyJ5Vfh7TCWSwsobofb+0uUPjbkOhcpLJ8YEucjp5wNWpb8nfWbWoHT4K9HiM
         96fmlzB+RjdLhzD5xqWfJ1Xw3quE6WL7bCJRWgaz3AZ3MD79lFIz06zK861ewx9+0+bo
         fYYQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AFqh2kqEPXm8J1xQ0FSg3IzjFNZLKswvXD0LubsIXfiB/LM5VPKIxcUD
	9/2IgUZduTXkXF2NhP6gY9oWsg==
X-Google-Smtp-Source: AMrXdXs0FQvOsK8gTMlQGZdH8DFUMYf0FJcacxAt2j2GRQcis+vu620MWla+V8OXkEk2V4XHQNHQgQ==
X-Received: by 2002:a05:6402:3714:b0:484:af15:bd39 with SMTP id ek20-20020a056402371400b00484af15bd39mr4902796edb.339.1673265654329;
        Mon, 09 Jan 2023 04:00:54 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:2c47:b0:7ae:83f4:3bed with SMTP id
 f7-20020a1709062c4700b007ae83f43bedls2746795ejh.2.-pod-prod-gmail; Mon, 09
 Jan 2023 04:00:53 -0800 (PST)
X-Received: by 2002:a17:906:9c88:b0:7ac:8e6a:a674 with SMTP id fj8-20020a1709069c8800b007ac8e6aa674mr54543895ejc.2.1673265653137;
        Mon, 09 Jan 2023 04:00:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1673265653; cv=none;
        d=google.com; s=arc-20160816;
        b=hKfEMjFmBlKhGgywYd3dtL56g5/bT3+YvYJ+HrTmTJdpvIDPz/0UXMuoUeLdT8YXVw
         uitYF6XM2qIgGBnUPqvPT6XdN46U7iw8Kfy5bvl1GMBoeMlPoyOM1nHslikOk5AFKXx4
         wCIRqDZvY2gNxbnQkc3QI9ziAavCPXeFaolHpDVEzdyCAlKZSsHU0aX+2+f/3+aSvxtS
         a3KoFlbI0j9LO+N+pnJK0hp5RMJYGNe7x5Vor0SNYdc2jORmiWBmQwjptaAetb7XPrti
         K9dKenVXlmZ+Rp6Z/NBwRDh/su1BP7C/GYbK9srZc/q6LWl6MdFZOwZtbIruSRrHEGaE
         s0tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/QmHdiGULaJGP+rPUpxdlYuhnIUflsBFp1LiLNnS7N0=;
        b=gPmUU2ExpTfX8EWDiO/YkQYDVlOlmkz31JpO2nyQTmDsj/qIVRcALB9pDCBZFc4lf2
         bdGOIH1gC0JOVxyb4TBIIjfp1xq0JIl0yO95l+WjMmYb8Hb2ksVlvUTQSKQ1IuNCSLUh
         3F57cHRGHp46V2WuyxT6K5OSmErriufifXeP96PnObXlUiFvJDfZhXYsnWaUNDu2XEC/
         G2jXrP+covK5theRr759GzikJ7WRPLFqu1QCJieQqLveFhs69NFEBIBeBG6sGklIZfhM
         U5D01zDRDzG2M3VxqDTrl18GXdpWnij8fSssW10Hfy7581urjWNDBHi6WIufpo6gQSkh
         PPBg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=kRrlj4fQ;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d13-20020a170906370d00b0078d8f27a069sor3348384ejc.106.2023.01.09.04.00.53
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 09 Jan 2023 04:00:53 -0800 (PST)
Received-SPF: pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:906:4684:b0:7c0:efba:a8c6 with SMTP id
 a4-20020a170906468400b007c0efbaa8c6mr3871794ejr.632.1673265652860; Mon, 09
 Jan 2023 04:00:52 -0800 (PST)
MIME-Version: 1.0
References: <1663210188-5485-1-git-send-email-zenghongling@kylinos.cn>
 <fa0556e5-e154-a4e6-6b18-4996a01d2f10@gmail.com> <Y2uDnUQKCDGzioJN@kroah.com>
 <2022111215445443712314@126.com> <Y29RtXGcey6V9iTY@kroah.com>
In-Reply-To: <Y29RtXGcey6V9iTY@kroah.com>
From: Juhyung Park <qkrwngud825@gmail.com>
Date: Mon, 9 Jan 2023 21:00:41 +0900
Message-ID: <CAD14+f1dAwCtOM-yBFSs5S-jRqwX1caUuP04-DRh5=EXC5Th0A@mail.gmail.com>
Subject: [usb-storage] Re: Re: [PATCH v6 2/3] usb-storage: Add Hiksemi USB3-FW
 to IGNORE_UAS
To: Greg KH <gregkh@linuxfoundation.org>
Cc: "zhongling0719@126.com" <zhongling0719@126.com>, 
	"stern@rowland.harvard.edu" <stern@rowland.harvard.edu>, 
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: qkrwngud825@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=kRrlj4fQ;       spf=pass
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

Hi Greg,

I've posted a revert commit as there were no attempts to fix this to
apply just to the said product (Hiksemi USB3-FW):
https://lore.kernel.org/all/20230109115550.71688-1-qkrwngud825@gmail.com/T/#u

Thanks. Regards

On Sat, Nov 12, 2022 at 4:56 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sat, Nov 12, 2022 at 03:45:36PM +0800, zhongling0719@126.com wrote:
> > Hi:
> >   This error not happend on all RTL9210,The uas blacklist only for on sale device(0x0bda, 0x9210).
>
> What about using the version of the device as the only one to blacklist?
> Any more specific information you have about that device?
>
> thanks,
>
> greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAD14%2Bf1dAwCtOM-yBFSs5S-jRqwX1caUuP04-DRh5%3DEXC5Th0A%40mail.gmail.com.
