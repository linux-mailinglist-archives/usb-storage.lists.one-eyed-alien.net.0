Return-Path: <usb-storage+bncBC5J7HGFV4DBBZXPX6ZAMGQESZR5YIY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC708CDF61
	for <lists+usb-storage@lfdr.de>; Fri, 24 May 2024 04:13:59 +0200 (CEST)
Received: by mail-yb1-xb46.google.com with SMTP id 3f1490d57ef6-dee902341c0sf19042253276.3
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 19:13:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716516838; cv=pass;
        d=google.com; s=arc-20160816;
        b=KLhnF3vMdss5U5TKaQVMyAOm7VCqPV7fHJGpF68F1whnCsgUlp/nHF7Y/g/eE9GaPx
         uEpJaiwuo/LNCqlCH6nEIxpLoZBbUWaKMeu0VSUXDyohPZim4vk8xv0wNx7LjKj4Ke8r
         jM9xl3eO1JiA7rsvfcwLa9CIHnRdJmv2RF1qQSqQwP5c+yyTnmZPVFLxg/ot9ZlCty0E
         XSUQfxwzgJHseFxnEPVDlMXCiSbdTPzCbVa/Xr6qKauw32TEMSIED6Qq0I2EVKTJwlvE
         gUjreZLPJIX1d4cXA9Ei2hyxBFSTUfYW03CjJuDO0W2FQ9ePvQ8bVpYe3Yc87OWfBJ3d
         79xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=DvSD/z8oMLaa+w8oUAsdfE/IiD5Brh1kVppevsilAZQ=;
        fh=LayuU9z9z0pJ1q9FCzL/PUZBwOTFbf5Lb43VgESr2gc=;
        b=OZB64E2vIJG4BW/JIls3HlVL4cW/zURTiM0HBwAjBAP0ldOYQwsKq49rg/3jw2Hbjt
         gXfYdopzHyEkabnYEyP3SMm04HZe+jcBF1tFLRjxmrZlI/+gcJUqdw27QPjQygaW2Alq
         YQSPEXgmuoNYKMwqKHE5U/kzibihAxJM+eukuggsPXBTUkESVgDdokst+EEeB49Mlf2m
         NID1xAX+UFXq0XItAcLDX6F8dbGcnydlGy53zPcOe50JDa9W4wIL4faZw/1jhLl+B44k
         CRYUv9/B1BxRBexq3hHAbzlB/kjpYQyPuuBzj0AsOrTWDHiQUESPC8f+rzgtiHPB4Uv1
         ZkHA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="d/TmR8nj";
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716516838; x=1717121638; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DvSD/z8oMLaa+w8oUAsdfE/IiD5Brh1kVppevsilAZQ=;
        b=ODTQUIOK9lxD00cLR+Yy25bcCyYfk4A86uesVbTNqbb/3m7RtbAVAtRQq2gEndxhhM
         igr22zSq3YKAXJVTCO3mOMjMGSCOJRiCED6h4Vxb+554g/I+jVupfsmtU5mCtjCa5PGX
         bUSjCTc82NfmuHs0MiJpe6MKI7ElA7MLV9GTo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716516838; x=1717121638;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=DvSD/z8oMLaa+w8oUAsdfE/IiD5Brh1kVppevsilAZQ=;
        b=lK5In71p/x3MpdHK0ebgsdpBwtUeMmX6HC3A9AHruYmJ4vu8s6Dq0twODBI6ubXawn
         vyu9AFxTHnDiXQVNwVfRSk3mc5UaisbyvtRXFbGdZlScaiR8OVpSlwvVD1h063j6INzu
         91ODjHMJRcEoW72Ziks+mcz9tcrLO4Z4xpY/kPzaZ4//xIBtoZzFMlqlkdD57qHZtFkP
         Luy2UhjP1Mz/JBuZCuWR3GJZYR2RKqlBC5Qua5MTewpVzhjJ5yjtLQSv23ZdnChSUoYm
         supu4pI/QDnVUbU1j/A9z9jqjQ33QCTfHt3zM+tXECVdGLQQOcIbMapgL1vlNimpIHc9
         /hzw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXmgAs3k4nohOv+PtWtB4EhR4q8zh1/T1KPObfHn7DoziYBvTyUwv3EX8z1UEdeVTyQ1qDKIOMwYAHE6v6pK/akAS84LxFnqAr+
X-Gm-Message-State: AOJu0Yw9Z3lP4BkDBMmMUlm2GVi6vF+AfPeM5g6wXRzXRGTH4GYZvomI
	KOTkHLHGlHmm/zJCxBZjORwk/Oj5FUqSaJ4VLe9q0EWDbChudPCk+IsMPHtF11k=
X-Google-Smtp-Source: AGHT+IHLnnJjxXwloSJ4VvE5tTI+EzkpquoKWSYcp9s0F7t05od6V7CU0WjRlnN/Qy197NU8Z1Wsxg==
X-Received: by 2002:a25:bcce:0:b0:df4:80fa:c0c4 with SMTP id 3f1490d57ef6-df7721d62e1mr998483276.34.1716516838330;
        Thu, 23 May 2024 19:13:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:dc7:b0:6ab:7a2e:c3c1 with SMTP id
 6a1803df08f44-6acb6b1ae70ls2054056d6.2.-pod-prod-03-us; Thu, 23 May 2024
 19:13:57 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW6G07oxh4Xa7Zj5qC/CPPqNzIeaDbbh0VXImtX8o3QHeKxHbNPB+s/XI0WPmoysrLqFSlGlWPAKhsnkFGqHSLheInjHjgaRX/+FDCg6klU36vHlwA=
X-Received: by 2002:a05:6122:168e:b0:4df:261c:fc0c with SMTP id 71dfb90a1353d-4e4f02e650cmr1092165e0c.13.1716516836986;
        Thu, 23 May 2024 19:13:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716516836; cv=none;
        d=google.com; s=arc-20160816;
        b=cm+dL2H1ZJXFOrfrYz8xE4CPDKrmqcRlk1vGdM0laWCLXhSlqlj2/WWi80g96urzbA
         39VFRrrYb9OaIux9H370iSUd+MXby3LQS5/RfLZxjNuUKULSZVOqjfHicU7BELFqILy9
         S93Za3k0MltW7T92Uu+4oulCv/0LdMVlgP2mC/Z9ng0CNhFWhx1FcrPz02kvzEYVeKrL
         gfzA/BnhquXd9oo4K1A7TUEDYDYSAdkoXl2QlMukGXi0SxHu2WHL9tYxKGV/5VZjtRn8
         nRtgGxdqq+r1nNTHuJTAn+XrWVDz9BjVGDhVQcipmbB1cy+TlCJ6wzOYJRs698heKPdQ
         temQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jd7c8VnwZhh78ikfWZy1/DT0+s4OAj8DFKOiLZAPwYU=;
        fh=5pPfuTNjmwAO6r2tsS//MPReRZvc9/EQ/A6hgH1nywM=;
        b=NVKWkIkV7kdf+t+Yjr0R3iLnEbzdL09dMI9pT7cNWSBzoSYCDh2gF3xz/GQLGqCLiy
         NAYQgaHjTRssSWv4EdDJSAjleApJBBdEiyvd9ofyuAXJ0XhioiHaNF24isDildUhncqR
         F+I1fKaOladonYIUbFwTYr0MbXjZFflH93WRaOoNxda161CnIHq1wGmBx08qYa/mXCM9
         4HJRmbR55tYLalX9xyDUXlWBMvRvfX80WhHPmeHatbvdD+uGLscN3jU2N/tCb1KIpbTG
         QD4XNm4S45/ixUsAdoZoP7ZdDfI3ROTd6hMZcBDie5qnpE66XY+hnZAml0zyqUwF4CEU
         kuzw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="d/TmR8nj";
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 71dfb90a1353d-4e4f0616181sor198327e0c.0.2024.05.23.19.13.56
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 23 May 2024 19:13:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWw2q8/rpvn9D7Th7RcVXXThSgdLfxCeepbJgCDDEDe0S2nTfZEGgR52vwA3IjhICV2SkXYMsTRQK6UXe8qlokozmRXapJqly2Pr0ItdTJXThHe2/g=
X-Received: by 2002:a05:6122:168e:b0:4df:261c:fc0c with SMTP id
 71dfb90a1353d-4e4f02e650cmr1092154e0c.13.1716516836500; Thu, 23 May 2024
 19:13:56 -0700 (PDT)
MIME-Version: 1.0
References: <20240523092608.874986-1-shichaorai@gmail.com> <a0afa88b-f84c-4b45-a265-2e6bcbb84b35@rowland.harvard.edu>
 <bb581989-4ac5-4ffe-9f80-01b5f993146f@rowland.harvard.edu>
 <CACjpba5iJ5dC=rB_Ckaqe4BKesrAN2VmsDCPZJ=frufNgA96Uw@mail.gmail.com> <eb995078-1923-43d5-a20f-9d4a7edee719@rowland.harvard.edu>
In-Reply-To: <eb995078-1923-43d5-a20f-9d4a7edee719@rowland.harvard.edu>
From: shichao lai <shichaorai@gmail.com>
Date: Fri, 24 May 2024 10:13:45 +0800
Message-ID: <CACjpba55sPDba9GfpMqe_GUgAtv=6MzWAnsgov-PdpFPEDxwGQ@mail.gmail.com>
Subject: [usb-storage] Re: [PATCHv2] Check whether divisor is non-zero before division
To: Alan Stern <stern@rowland.harvard.edu>, gregkh@linuxfoundation.org, oneukum@suse.com
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	linux-kernel@vger.kernel.org, xingwei lee <xrivendell7@gmail.com>, 
	yue sun <samsun1006219@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: shichaorai@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b="d/TmR8nj";       spf=pass
 (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=shichaorai@gmail.com;       dmarc=pass
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

On Fri, May 24, 2024 at 12:30=E2=80=AFAM Alan Stern <stern@rowland.harvard.=
edu> wrote:
>
> Good work!  So the problem is that the driver believes the status[0] &
> 0x08 test.
>
> The way to fix this is to add an "initialized" flag to the alauda_info
> structure.  Then alauda_check_media() should call alauda_init_media() if
> the 0x08 bit is set in status[0] _or_ if info->initialized is 0.  And of
> course, alauda_check_media() should then set info->initialized to 1 if
> the alauda_init_media() call succeeds.
>
> Would you like to write and test a patch that does this?
>
> Alan Stern

I tried to do this. And the workflow can enter alauda_init_media(),
but there are still many conditions to satisfy in alauda_init_media().
Unfortunately alauda_init_media() stop and return here before
initializing uzonesize:

if (data[0] !=3D 0x14) {
    usb_stor_dbg(us, "Media not ready after ack\n");
    return USB_STOR_TRANSPORT_ERROR;
}

The data[0] is status[0] showed before, and it was 0x0036.
I am not familiar with the status code of alauda.
How can I deal with this condition?
Is it ok to pass this condition when info->initialized =3D=3D false, even
if the data[0] !=3D 0x14?

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CACjpba55sPDba9GfpMqe_GUgAtv%3D6MzWA=
nsgov-PdpFPEDxwGQ%40mail.gmail.com.
