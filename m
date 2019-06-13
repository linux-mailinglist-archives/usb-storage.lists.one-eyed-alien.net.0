Return-Path: <usb-storage+bncBCCYRD4S2ALBB6OVRLUAKGQEQ5K7SJQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd45.google.com (mail-io1-xd45.google.com [IPv6:2607:f8b0:4864:20::d45])
	by mail.lfdr.de (Postfix) with ESMTPS id 0947A44CB9
	for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 21:58:51 +0200 (CEST)
Received: by mail-io1-xd45.google.com with SMTP id h3sf16349161iob.20
        for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 12:58:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560455930; cv=pass;
        d=google.com; s=arc-20160816;
        b=EULzo4v+6gSWYRPAlZabkYBxCnUCIMdDuzCqq+oi9aQ8GWXKoLuEIlOvp6V2+FEsO8
         ULqUQXUZ2Kb6Jjq86bMLuYGqfgS7aWmuvUnaejEDtv1g89wUmfQvHAUJ1v78a8sAbBTH
         AowWCK55bKFsS3wmY6RjSSA3ojeYPYZOl/FJm6Y4ETvwM+RKOajDkcn4ecmXyJ6lJHh7
         PHalTUNJI+WZ3ytdSlhR6fTamEcvHzNfRxVCctgBBUnzW4fHKMCYckmgQnfLZ8VjFvn0
         hD8jrVveoxg6jd+IEC3vmXl7gCkhmKH8N5nU9CJc/fD9jKgyXNSQetFnAcLXTHoNb+9e
         zwlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:thread-index:mime-version:in-reply-to:references:from
         :dkim-signature;
        bh=OsVR8C/YgF+RW2Jxa68jaYCh/lYjJJUWg8pz48CMIJU=;
        b=ntDYzXmCDKZ31WJSVtPm2SKaK5RPGzgFMKsY68BMcMcqbg/p5u8zOOKNGsXBRAhY25
         vGiwuT7i1RGXDX0SrFXFA1Y3bEQLhskMhqgtw6/K6MkDCEcLNlBC9BFiOT8QTH5jXKj/
         BWoDPSNK4WDa00vdO2P/01r+q41pGGFF3d6BLhAI8Prh/ByfRZ1Xo/6i2bWF7NXTD7F7
         /6W3U1ymaNr3hHUTSTVEWlxYTPCcH2/HNnIX42MkdKS24eT0UwV6iqCxl5qHUTq55RVH
         PUpd8JXqS56bMXX8bLoUS3QZaCtupr05RFEXVuSLcD9N36iepUZ9gS0H9LuZ1fZ+Ufg6
         fnXg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b=VvRUdVRn;
       spf=pass (google.com: domain of kashyap.desai@broadcom.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=kashyap.desai@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=from:references:in-reply-to:mime-version:thread-index:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=OsVR8C/YgF+RW2Jxa68jaYCh/lYjJJUWg8pz48CMIJU=;
        b=Em6sKbJmPZCqb4WO0qd1smfA1/6X6sQp4sESTpufPM/89QJ0ksguQ3ibVl0xh61gCR
         RRHtLYq4cy6F2JCpMler1i+lepaEXHwvhHzUO/D6bZgeS1PNd0qW/xclRcxj9Y058M6D
         FTpHWBrEyLMb3hyXXXu88qcXftwdmYUml/qNw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:references:in-reply-to:mime-version
         :thread-index:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OsVR8C/YgF+RW2Jxa68jaYCh/lYjJJUWg8pz48CMIJU=;
        b=fpSfvgTD1sYGEmJBKloZeCb508sW+LZUbiQozrqb26Rc2mZ3fRy9YcwTPp9buxbsDh
         yCJv/c3HHF60AgFvewIFiIJSOJyvJLyRO0StI7gwCULSP/mnM66+KmlZA/RkKhVBYDm/
         GVi/f3/Ap7SZY+E8By8J4ErPG5p/m7tNraywqJNz5IRkMVkZ0uypXqb5sI6b9ojYpAjN
         GRY1Pd1O9dIOR+ARvIr3+ocRrOA5joBLVJU8ew5VKQcIgQjyWaKX/oK71Lfw+t4GJcmf
         +gpFc3ZTMAO4M+QeAqWe76mgbgVNxQ+HsTrwWBkHez1Skep0rTsPrxyz+fAg2qD0SVMl
         TEHg==
X-Gm-Message-State: APjAAAV6amMt18vObsoGuQ8xDwQgKpezCTa1qvy3BkdzOuEo6+HgUo++
	K0uuKrBJ3Sc7mKkjAPseTQM=
X-Google-Smtp-Source: APXvYqz/wcskr1oqLRQJhZKn4PmRqWLz1FhO0V4tg/T89ZXw5mBgOoKVMcjNDMF198m1ry14sxOoMA==
X-Received: by 2002:a02:2a0f:: with SMTP id w15mr54034090jaw.52.1560455929906;
        Thu, 13 Jun 2019 12:58:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a6b:fb19:: with SMTP id h25ls75540iog.0.gmail; Thu, 13 Jun
 2019 12:58:49 -0700 (PDT)
X-Received: by 2002:a5e:da4b:: with SMTP id o11mr14239987iop.212.1560455929445;
        Thu, 13 Jun 2019 12:58:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560455929; cv=none;
        d=google.com; s=arc-20160816;
        b=cAA7LUL6hurrlFmdcJPCpFvJ3gJo7nLBgVGxWcm1NuQhtDUDfea1hEiNKsm4SEa08E
         +7r+W+7gpak1gM1bnC2KSGSqFPlakFuFcj8w5ybK8JHXYhaUIcTN05Fjja8MsRD4AfXZ
         5NnecvzZ48wb4hle/rex0jULOnxN3kJnPnkj01V8aoS8SeKdVzgyQpQp6TOcWh8iqxpT
         TSnpV/Lq+8gfxQgME0bapveXxwlYId5ckRumkoOcAFHhNfVvRuOqmlbEIy+4OjRUtvR6
         dpSG7VVwU5BZd3mQzCNxEDTngc7wf/ydHx7zr5lyZSU4+sNiK6pQO5790dmrqoNQ9Msf
         oIEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:thread-index:mime-version:in-reply-to
         :references:from:dkim-signature;
        bh=0g3LShZij9OvLky32ww/mm8nsliTsm7gD3njRd6NCQk=;
        b=GQMXU/b0y7cz/xk8seFojqFTg0VvZIVbPceM4ZEwd499Hzvlkn98/GBzhPng37pIVj
         hIuqu79PbwjmpcuS28eyg/c+6WRJPgdQX02Z/OJWGVpeb97a/1fQNFFXbdtbHbDOXybh
         0MrWLnI408fZJn9rHcYYcat39M9Lp9dnBsvMD3xNRmn5aPH14yc8OPx0GWXYLNAW7qVy
         R9ATjEv2o7V1GHJt1q48YGAVMhDAKxn66Gw5IS/s0YhvkhEavdXGJoiPphdCEo61duW3
         yntT3ksS8Fv4fwztHlA0xjkBg98MFaEk231RxixfQMNRQTs6uODnWufM4BXNcG+8yvDg
         QQ/w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b=VvRUdVRn;
       spf=pass (google.com: domain of kashyap.desai@broadcom.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=kashyap.desai@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id u26sor501962iof.144.2019.06.13.12.58.49
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 13 Jun 2019 12:58:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of kashyap.desai@broadcom.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a6b:f910:: with SMTP id j16mr7292522iog.256.1560455929090;
 Thu, 13 Jun 2019 12:58:49 -0700 (PDT)
From: "'Kashyap Desai' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
References: <20190605190836.32354-1-hch@lst.de> <20190605190836.32354-11-hch@lst.de>
 <cd713506efb9579d1f69a719d831c28d@mail.gmail.com> <20190608081400.GA19573@lst.de>
In-Reply-To: <20190608081400.GA19573@lst.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQNLjZIO2zMn7N+9xPobnDbFSu4o5gI2RJdJAgF+bYgBfxw4kaN/cE8Q
Date: Fri, 14 Jun 2019 01:28:47 +0530
Message-ID: <98f6557ae91a7cdfe8069fcf7d788c88@mail.gmail.com>
Subject: [usb-storage] RE: [PATCH 10/13] megaraid_sas: set virt_boundary_mask
 in the scsi host
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Sebastian Ott <sebott@linux.ibm.com>, 
	Sagi Grimberg <sagi@grimberg.me>, Max Gurtovoy <maxg@mellanox.com>, 
	Bart Van Assche <bvanassche@acm.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Alan Stern <stern@rowland.harvard.edu>, Oliver Neukum <oneukum@suse.com>, 
	linux-block@vger.kernel.org, linux-rdma@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-nvme@lists.infradead.org, 
	linux-scsi@vger.kernel.org, 
	"PDL,MEGARAIDLINUX" <megaraidlinux.pdl@broadcom.com>, 
	PDL-MPT-FUSIONLINUX <mpt-fusionlinux.pdl@broadcom.com>, linux-hyperv@vger.kernel.org, 
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kashyap.desai@broadcom.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@broadcom.com header.s=google header.b=VvRUdVRn;       spf=pass
 (google.com: domain of kashyap.desai@broadcom.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=kashyap.desai@broadcom.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
X-Original-From: Kashyap Desai <kashyap.desai@broadcom.com>
Reply-To: Kashyap Desai <kashyap.desai@broadcom.com>
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

>
> On Thu, Jun 06, 2019 at 09:07:27PM +0530, Kashyap Desai wrote:
> > Hi Christoph, Changes for <megaraid_sas> and <mpt3sas> looks good. We
> > want to confirm few sanity before ACK. BTW, what benefit we will see
> > moving virt_boundry setting to SCSI mid layer ? Is it just modular
> > approach OR any functional fix ?
>
> The big difference is that virt_boundary now also changes the
> max_segment_size, and this ensures that this limit is also communicated
to
> the DMA mapping layer.
Is there any changes in API  blk_queue_virt_boundary? I could not find
relevant code which account for this. Can you help ?
Which git repo shall I use for testing ? That way I can confirm, I didn't
miss relevant changes.

From your above explanation, it means (after this patch) max segment size
of the MR controller will be set to 4K.
Earlier it is possible to receive single SGE of 64K datalength (Since max
seg size was 64K), but now the same buffer will reach the driver having 16
SGEs (Each SGE will contain 4K length).
Right ?

Kashyap

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/98f6557ae91a7cdfe8069fcf7d788c88%40mail.gmail.com.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
