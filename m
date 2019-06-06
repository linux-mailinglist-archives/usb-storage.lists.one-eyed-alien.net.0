Return-Path: <usb-storage+bncBCCYRD4S2ALBB77G4TTQKGQE2JSDQXY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x347.google.com (mail-ot1-x347.google.com [IPv6:2607:f8b0:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 278963783B
	for <lists+usb-storage@lfdr.de>; Thu,  6 Jun 2019 17:38:41 +0200 (CEST)
Received: by mail-ot1-x347.google.com with SMTP id l7sf1211474otj.16
        for <lists+usb-storage@lfdr.de>; Thu, 06 Jun 2019 08:38:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559835519; cv=pass;
        d=google.com; s=arc-20160816;
        b=CzS1SofQMC6HLYky/6fCtuix9kWbg2K4PipaYiXD08tNuSUNvYvXVSl+/faJiMO1zn
         URCcggptUc3TO0rZcZvdA8LOnlU1n3IaZz0TQc2hFqPWVCVsaGgjanzn9NvZx7pyduL4
         Tjngs4lcgY6JV7i5npdfz2QuY5QbtkP9h7guQu24AGtL3fRzT3rva2zbDnFot+hqc5RS
         Th6gOxUFqFkzzKHwRXE2SLthC3sto8gYl4+ed10PgCh4ogri2mmxaRESZQ+PkB2OCQxR
         P3WFBUx57nwete5vspFf6osygvG0Wj8fP6ViSr3tAITHk7SF02M+u8bh7hl0ktwvSL1z
         wGtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:thread-index:mime-version:in-reply-to:references:from
         :dkim-signature;
        bh=EUynoTN0ykgD03o0GpBdN7a4TgxTIHFP7lQYNCz6snE=;
        b=Dxf0LVQlkf49HiyUbsCKaezfNqUHZtuUs2e0DL3iv+WJ7gxfjwNs+WANCnjSOUA+Oq
         Sdi7gqkiQdkWaOcX98gN4ohT/0KMAtJJdfskbIsp47sWNd00oE6oLv04s84T4vdQomr/
         UGkC8Es2eEQlUAJf0tckP0cwIJOcpBENjVnJ2XnJ8X6Uiy9VjaA95i3JaZIBUPGcos6v
         spLmGIjMPO/+sWN6p1qZkNKK57pwR3CU/vIcCS6c8YpD/2Kj6z19ssBj/hO2VbfuWiwq
         zXikZqV2Clv7vJBokJzN3HubGi27uhUH4hm/XUx8kvQsASXi2vOMBlDkHw0ptL5f/5kw
         pPaQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b="AFDD/k2/";
       spf=pass (google.com: domain of kashyap.desai@broadcom.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=kashyap.desai@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=from:references:in-reply-to:mime-version:thread-index:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=EUynoTN0ykgD03o0GpBdN7a4TgxTIHFP7lQYNCz6snE=;
        b=lhMk/cny8pAeh5FZpw+CyXthtSPq3GcQlNqWF3A4L3xOlxDDjVWrhNrLuJltDXWSgH
         5BuZefwn37sWxadbmCl+L0Ti06RnGCKH8fr/IDJqphjzl7lIFbkW0fB87kREo5L2gQCL
         OC40VEmiAuz+pmNHQi0pn1N9Ik3x92m3p+XTM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:references:in-reply-to:mime-version
         :thread-index:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=EUynoTN0ykgD03o0GpBdN7a4TgxTIHFP7lQYNCz6snE=;
        b=hj9aYtH+RNgh8NFIpiirH1qtcJpXhagrfIDcNKF4TRv9nDkucVOd4Q5+8E22dKlGMS
         4Yv3q2iqF+DgHSjEcG5FQq7TFOG+vYYJFfkVtQ59fpgrN5rCWnBQ3Qdci60AZ8I5Tx0d
         WTgkDJ3dtlxodsyqtBx7H56VdwqIypAoLcQKDIkgWdXWqp3CInXSBCozXJuZqgJvEy8F
         syvY6ilnu0+VXNc2A15btIUyYiSjjeHhjvY3KK1ueW5csClYRtWzE8V45E1y50Iv8chR
         coogfBPrRAR+9/RZ5J1vicJkoF6LJFdVoIyzuP3cRjxq158Ra9UheWGhc5t463gCAblQ
         V87Q==
X-Gm-Message-State: APjAAAWqrUOG8sxD86dwauCpzjWQIzumJlMK7ZPnQlF3ykPBEx/+Yn6Z
	X3OzQjeYeWQhAxsacYb6iwQ=
X-Google-Smtp-Source: APXvYqxYA9ujqN1DOjYK9OB5bH/0+VstZKay7YX1XeEQtNQ3N1tVnjP7VTuCP1ceuG/+gdzRvIayLw==
X-Received: by 2002:aca:f089:: with SMTP id o131mr449880oih.103.1559835519456;
        Thu, 06 Jun 2019 08:38:39 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:e055:: with SMTP id x82ls843778oig.0.gmail; Thu, 06 Jun
 2019 08:38:39 -0700 (PDT)
X-Received: by 2002:aca:e50d:: with SMTP id c13mr471533oih.42.1559835519178;
        Thu, 06 Jun 2019 08:38:39 -0700 (PDT)
Received: by 2002:aca:da07:0:0:0:0:0 with SMTP id r7msoig;
        Thu, 6 Jun 2019 08:37:30 -0700 (PDT)
X-Received: by 2002:a02:9567:: with SMTP id y94mr32045648jah.28.1559835450266;
        Thu, 06 Jun 2019 08:37:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559835450; cv=none;
        d=google.com; s=arc-20160816;
        b=vSoeOq+8fduT+TU6UWFwKd0RHgln67gaks66z3mbnaagfsyvJvvzMF6EhRqfJPNiXg
         kreR4J+apOsoFe1TB3wVuTWfM6tfHIB1J2z/X4/gEh5ugpDj/0yLHHV75Q5+cQyCoya5
         V733jqedAITzc0uH8kq1qW0s8WnSfZU67zQI+NbQYVeOzvLH9RATOylOqykvCnRaAWoz
         e1HHYWzV0hqpQ3OUe5OB2ghgU5hj+eDkuXRY4kGrcw0XFszzijG4dKnWA3JdaosPc2pq
         iKMcQ2GxUt7PeB6RU/3ziv/RyL4LxIOFS29ELRDdIjXwMQ15nnv/2Zbr1sbxG6rwLbe+
         Xoqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:thread-index:mime-version:in-reply-to
         :references:from:dkim-signature;
        bh=7FsPigjoq8C26eFiFz4PbLbviE4sOu/NaNL8Wv/dWZY=;
        b=HqSWmbckHfBy+HiKGHdEVE7VsWnN4CbwP4Se/KmkT8/tDJFg0U1vyn0IQ66UCTf2Bi
         iue92tMWtwPz6KW/S+Gi1InV3CF1aCkd0zvScXxLjv0QJQkZPq/M8dX7TpzUxUJ5sRgf
         Rury4kIChkLpGqMv+siK3wuIpQ1D+O/NtccQ4wE6LG+NpO4Y6oPTewEgYsZkw3AGO5os
         TVTc/fj8ymklG+4sXf14HC5GhOjW4A/n2/F7rfkPvsV0QBjgJoRP8E4eDPvl9AKHZGv2
         ScL1mxGrrAO3on4JDdhE8m2Vqtt4WBzfdHFbEiZPbPAtcFGFQrmZlScIGOvSTbJaxPNg
         p4Fg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b="AFDD/k2/";
       spf=pass (google.com: domain of kashyap.desai@broadcom.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=kashyap.desai@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id y137sor1186885iof.73.2019.06.06.08.37.30
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 06 Jun 2019 08:37:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of kashyap.desai@broadcom.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a5d:9502:: with SMTP id d2mr14353761iom.2.1559835449946;
 Thu, 06 Jun 2019 08:37:29 -0700 (PDT)
From: "'Kashyap Desai' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
References: <20190605190836.32354-1-hch@lst.de> <20190605190836.32354-11-hch@lst.de>
In-Reply-To: <20190605190836.32354-11-hch@lst.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQNLjZIO2zMn7N+9xPobnDbFSu4o5gI2RJdJo5AtPRA=
Date: Thu, 6 Jun 2019 21:07:27 +0530
Message-ID: <cd713506efb9579d1f69a719d831c28d@mail.gmail.com>
Subject: [usb-storage] RE: [PATCH 10/13] megaraid_sas: set virt_boundary_mask
 in the scsi host
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Sebastian Ott <sebott@linux.ibm.com>, Sagi Grimberg <sagi@grimberg.me>, 
	Max Gurtovoy <maxg@mellanox.com>, Bart Van Assche <bvanassche@acm.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Alan Stern <stern@rowland.harvard.edu>, 
	Oliver Neukum <oneukum@suse.com>, linux-block@vger.kernel.org, linux-rdma@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-nvme@lists.infradead.org, 
	linux-scsi@vger.kernel.org, 
	"PDL,MEGARAIDLINUX" <megaraidlinux.pdl@broadcom.com>, 
	PDL-MPT-FUSIONLINUX <mpt-fusionlinux.pdl@broadcom.com>, linux-hyperv@vger.kernel.org, 
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kashyap.desai@broadcom.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@broadcom.com header.s=google header.b="AFDD/k2/";       spf=pass
 (google.com: domain of kashyap.desai@broadcom.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=kashyap.desai@broadcom.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
X-Original-From: Kashyap Desai <kashyap.desai@broadcom.com>
Reply-To: Kashyap Desai <kashyap.desai@broadcom.com>
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

>
> This ensures all proper DMA layer handling is taken care of by the SCSI
> midlayer.  Note that the effect is global, as the IOMMU merging is based
> off a
> paramters in struct device.  We could still turn if off if no PCIe devices
> are
> present, but I don't know how to find that out.
>
> Also remove the bogus nomerges flag, merges do take the virt_boundary into
> account.

Hi Christoph, Changes for <megaraid_sas> and <mpt3sas> looks good. We want
to confirm few sanity before ACK. BTW, what benefit we will see moving
virt_boundry setting to SCSI mid layer ? Is it just modular approach OR any
functional fix ?

Kashyap

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/cd713506efb9579d1f69a719d831c28d%40mail.gmail.com.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
