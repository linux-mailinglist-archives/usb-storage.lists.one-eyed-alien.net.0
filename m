Return-Path: <usb-storage+bncBD4N5C5IZAFBB6W77DAAMGQEPFHW42A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B4DAB1AB7
	for <lists+usb-storage@lfdr.de>; Fri,  9 May 2025 18:40:28 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id 4fb4d7f45d1cf-5fbecd8a707sf255173a12.1
        for <lists+usb-storage@lfdr.de>; Fri, 09 May 2025 09:40:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746808828; cv=pass;
        d=google.com; s=arc-20240605;
        b=JUeN2gQLqyV5atU+JQtgah2g3rAgC4hBx15KVbXE3UpMsRTBS8shwqyFuwmbtZHJek
         77oLlrVoT7rlpiRYTy1m1JwBH122L06QJzgKWOYAoOSM0yo8n29vNknC7D6JcHefp9jo
         sXKLvD0kWUY0KMXnX6+IkRe8FzqZxFEyWTFxb7muOAa2GaPbu8gZZJ6JjuTMMBFBQMU5
         yQvf+CQJ7f9YCFHjDxKYqipJNbaWuxu5lWQksaoJ4Ql92p7Be/2k/BI47Sa+iT0vICBP
         TgpdloJFIqeSVHrt4QbY56cp4YzvocOEDhUnrDwiMYaL0/bdgfjInmlzr6XVn2g2zOGD
         wNPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=mXkQppQnke5+KSs8nxLxR8QaPJbYS0EWv9qEF6Ok0as=;
        fh=zicuFqpmtRbBTzu+Gn1di9hu6xgj6SzBk9NNj7497Po=;
        b=RF+A6TYoY1/lODjPBJp1vH/Y3pWO10QJ/NkCENDcnEXK+ks+3iv+bDdhZTht7Nc7SO
         WBc9isdEwl09p+luA2RgYgr7mhLyH2B0RWlDX3/FKBEmbCCZc9UX3Tpqzw3yBJBVw1iu
         i3+e08zWQG/KGFQ2tZIdzmMgNfTq0JHCUUYWnLJmkzlAr7UjYRSZyh37S6C+4DxcWwL/
         dr4zvG+1Oecguo1PrJik1bPI/FZ4FermCxz7piZ+62WnfuLivbt8thXhn5sTLlMFv6Io
         AjWyWIzj2FYqv3pI5N4TSqqV2IE89W5tmw9dO2MBfLkeXty5O1ZVtf713dSGdKLz14x5
         Lbhw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@jakerice-dev.20230601.gappssmtp.com header.s=20230601 header.b=JvbcUFAQ;
       spf=pass (google.com: domain of jake@jakerice.dev designates 209.85.220.41 as permitted sender) smtp.mailfrom=jake@jakerice.dev;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746808828; x=1747413628; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mXkQppQnke5+KSs8nxLxR8QaPJbYS0EWv9qEF6Ok0as=;
        b=IzII9cBirShxHuw66Azupk/u6FmbrB1K0N8NrlSk7c87UczFz/t/iTMItXMrx0yYb6
         CWeMpzQm6PJ1tC6z0gD94Kz9Zk6bQZIO0MT4Wcx4kxbnMN6XQtzYfySnRx7PoqmkcxHb
         u2m35wTaMJ2dvmTN/Z0pEJspyCq7ADZ8unn9Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746808828; x=1747413628;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=mXkQppQnke5+KSs8nxLxR8QaPJbYS0EWv9qEF6Ok0as=;
        b=Dg3aWs6KhianQkZ+n1Owu/q+szBsPY0fUsTzxuOmWCHEXRf2Gjwbf8NiAGDaqCb1Br
         4iiUCyzrfYW6yYIjKWDaN0OGI748o0JeJo/zLyybqnVsmOjUx8I8dnCLMzS8Pf3O4kV1
         pwIbcIOt2PXFi34U1aPyJiUS7W2ayjjRWEvVHUN+bdyBjyaz/+QLvndvJ5j3ABIOXVbs
         QAx0Ufa79hgq6cmsHSQCk9i0/exSOJ3Am9+iUghQCIigScFBql4qTieCDaeLFGzc7KTc
         fFfzUIPFHAHy1F19qYVLDBA0i/lZ/o1NRiqfOeVCGF688Xeq3r1YWqjbKP6BqDm9JrZG
         eIwg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWfrVRkgUpvgcU/16TEmAvsWGNb6LQ3wMIFSSXgB8IGlJuUKNmULojxmw4HMCoaxA0gsMH4EQ==@lfdr.de
X-Gm-Message-State: AOJu0YyhKohkm6BneLECfyS1B6nnjfZxyPB2k9S8yRYDmp3UWtBV1tOs
	xwzAiHikPAOB7kTL6KpbDW/we46sNnt0VajknuBxGFkCbsYIy+fKdUskh41y4OTgXy9L6dg=
X-Google-Smtp-Source: AGHT+IF2cUlBhnh0ze4wK3dgYoUFoHBPcJNHUKl/joFhjTbyl62lO1/EbwsiFAdlM8eru3uc0xykgA==
X-Received: by 2002:a05:6402:3547:b0:5ee:497:5221 with SMTP id 4fb4d7f45d1cf-5fca1200d4emr1362511a12.11.1746808827202;
        Fri, 09 May 2025 09:40:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBEatzhu5eLPI/G75VtCmmHZa3WwkN6VziFoJITcPpZkiA==
Received: by 2002:a05:6402:3546:b0:5e5:60d2:a01f with SMTP id
 4fb4d7f45d1cf-5fc34b3bf23ls67782a12.1.-pod-prod-06-eu; Fri, 09 May 2025
 09:40:25 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWAkUt5Rivcpl8ehxv+TRIN8hcOeTIZHmTZ1+9+OsWldVmrwI2H+SGjflxaSsWPBcTy6hJanDG5tXet1g==@lists.one-eyed-alien.net
X-Received: by 2002:a17:907:3f20:b0:ac7:c7cd:ac39 with SMTP id a640c23a62f3a-ad218f0f2eamr441053866b.24.1746808824872;
        Fri, 09 May 2025 09:40:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746808824; cv=none;
        d=google.com; s=arc-20240605;
        b=ek+8LDL/IIey3OHbKE9F4hRTKG2ndMkeBWMeV2+t243yVUG6WDq/9S0UOLyGAfAAUW
         KsWmlKy9Z6eTQMueyfeHKWtsF7/sBmXHAmz82IwlQBDZ+tOseqOjJ06N8OXiEhnuwUcM
         TUaKTI+akXB9jNQVn7c8J5gjqeopjaM5gCrASMvVnKJm+n1q/uNmvdlUR+HWro/ZwFsi
         4aioEwLyZiQxIm3sNBzkWw02UKmXvfySAJ4tHgSmpDhe6OSxkc14VLBWMnntMsRDrm0R
         5g4mtWDH7ezXn2jb75869R6CdXGszTjOKIjajomT/OKvdDhpHhqmt1IyQKHZmcAklkm5
         zA2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ezkh/c9YOiEB4YMEXS/lI8snDUy5hokGtG1LLPTxPBk=;
        fh=as0BvS7ShCNwdq0K+gmRE/HtcOQcazgXFLMEfQnhWI0=;
        b=k1vgaIs09M/uNg0JkO9xNJAYyF4jYhToJpjhH6OnOnfMG4vkqLAjfEGls1Y2K0Tm3s
         KBC56UvPJWZ/DYSJTkNk9QZQ5b719U2QpQFlB0pkQ8nLoz71wJwpTYQ6y3sy650z0JxD
         FVdWjUa1drRi7s7B/sQLd38w4B/HiTGr/xeNEwIHNmxmsdSC4zYS3x3jpF02iez0eG7D
         La2hfAJG342PDF/msyGSiKUrjlg4NBEntKb7bH1/LGLTKkSa5arFKoGOA7TLBL1gFLlm
         ZDEURoCxa0Mm9uYyYlCqKgxdeQGedpZ+Fq3qZ8kPDm0U2n4A4ggurr/E8DF8BITSohcE
         hZDQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@jakerice-dev.20230601.gappssmtp.com header.s=20230601 header.b=JvbcUFAQ;
       spf=pass (google.com: domain of jake@jakerice.dev designates 209.85.220.41 as permitted sender) smtp.mailfrom=jake@jakerice.dev;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a640c23a62f3a-ad2193695bbsor129074466b.1.2025.05.09.09.40.24
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 09 May 2025 09:40:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jake@jakerice.dev designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVIbXB8b32jA9xGRyHQ+644A6a2orz6Jmar63V2bs3KPZrEuWkqJ+bq12sGS/sDOyRL4ivTzH/CfN8euQ==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncvOf/lzdSp81Z7jVWgI9SfgW1T4Gg9O7d69NFRbU9rc5/xUy24VtTp3TOeJALz
	X+DUtAKYftZN8tkaGUZ13+N0qSI6QTsgLh8MwO2W/yNyU3/PbRjV/CMkP6OqPomXAL36moxfFS8
	J0ALEMwTs4QUsGEUTlnp70sQ==
X-Received: by 2002:a17:907:6a13:b0:ac7:81b0:62c8 with SMTP id
 a640c23a62f3a-ad218f8b0b6mr473399366b.31.1746808824446; Fri, 09 May 2025
 09:40:24 -0700 (PDT)
MIME-Version: 1.0
References: <20250506191531.3326-1-jake@jakerice.dev> <2025050927-bring-gusty-e850@gregkh>
In-Reply-To: <2025050927-bring-gusty-e850@gregkh>
From: Jake Rice <jake@jakerice.dev>
Date: Fri, 9 May 2025 12:40:13 -0400
X-Gm-Features: ATxdqUEOyTvQSEbd8Zcyxyv61W3TtwQMih5pSG6mXb-VTjDsGPOoVYP3FimSY2w
Message-ID: <CAFd_ZdCmqfj_Y80ZJih5G5Zn1nW0pE-R+gRFBMWRULjN7SNCkA@mail.gmail.com>
Subject: [usb-storage] Re: [RFC PATCH] usb: storage: Add blockbuffer ptr to
 info struct of sddr09 driver
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, stern@rowland.harvard.edu, 
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jake@jakerice.dev
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@jakerice-dev.20230601.gappssmtp.com header.s=20230601
 header.b=JvbcUFAQ;       spf=pass (google.com: domain of jake@jakerice.dev
 designates 209.85.220.41 as permitted sender) smtp.mailfrom=jake@jakerice.dev;
       dara=pass header.i=@lists.one-eyed-alien.net
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

On Fri, May 9, 2025 at 10:45=E2=80=AFAM Greg KH <gregkh@linuxfoundation.org=
> wrote:
>
> On Tue, May 06, 2025 at 03:15:31PM -0400, Jake Rice wrote:
> > Hi all,
> >
> > This patch updates the sddr09 driver to allocate a reusable block
> > buffer. Unfortunately, I don't have access to the SDDR-00 hardware
> > (which I know is pretty ancient), so I'm requesting testing from anyone=
 who does.
> > Please let me now if the patch causes any issues or improves performanc=
e.
> >
> > Best,
> > Jake
> >
> > ---
> > Currently, upon every write the block buffer is allocated and freed whi=
ch is
> > computationally expensive. With this implementation, a buffer pointer
> > is added as a member to the info struct and allocated when the card
> > information is read. The buffer is freed during desconstruction if
> > necessary.
>
> As Alan said, this is really slow hardware so I doubt allocating/free
> the buffer will even be noticeable.  Why make this change at all if you
> don't have access to the hardware to test it?
>
> thanks,
>
> greg k-h
Alan and Greg,

I apologize, I was learning about the usb subsystem/usb drivers and
saw the TODO for this and figured it was a quick implementation. I
should have waited until I got the hardware before submitting the
change. It won't happen again.

In any case, thank you, I appreciate the feedback. I ordered the
device to test this. If I find a significant performance improvement,
I will re-submit.

Best,
Jake

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/CAFd_ZdCmqfj_Y80ZJih5G5Zn1nW0pE-R%2BgRFBMWRULjN=
7SNCkA%40mail.gmail.com.
