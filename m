Return-Path: <usb-storage+bncBD6LRVPZ6YGRBNVT3WXQMGQEPCCF3PA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 665A787E013
	for <lists+usb-storage@lfdr.de>; Sun, 17 Mar 2024 21:59:35 +0100 (CET)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5a46ad3f0f1sf3119397eaf.2
        for <lists+usb-storage@lfdr.de>; Sun, 17 Mar 2024 13:59:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1710709174; cv=pass;
        d=google.com; s=arc-20160816;
        b=hBdS6tQIu/tFD34zwIawgKPv4JwQGFasJxwFvenB/ujv31HtwSI2L87hKwwULSRvpB
         PqTHS6/L9vP7GkI+R7XwGkFxqZXmBsF8YWsUP2E5o7E+M4xwili7aGILd8axE9vjuM8k
         ha21hOWfQLw8c9zSrBn+/osorfFFVRUb/07p4VWf4jWfgnjcQ6JQJNVQMHiWblxi2508
         MdSsMVjcAkA6v8QZPpXt9p873nLDanObSJV7HtQA8fsTNoscH3YQ7b9jyhuSxfWRKE2H
         l24VD6N7ueqrMwbi/gL+P/Ng8S6vCwV0OpGluvy+PJcw8CLuKl2OWhzt3sHY3Mx1iETq
         aiQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Cf/p6Euo+8IaJP/RQECGnzGoMXSp+ozHHSnI/D26ZVw=;
        fh=dssf83Q6bhgkCr7jKIuPc7lvqnHzlUue4x2MDDsT5BQ=;
        b=rfufAJKDuML40Tlk9jaiEaJksJumNuyW0SEYD/Z4q3OJVJjK+yVtzePCVR18n22rZG
         hqa2kgBNbl5GAPnpe6Et/8o0SDIoUdFi4RozWNYQLYmCmucfLeWHa1BvH1oj+Ah6aJ2V
         8ncbtv53mXY95tPuR3H14h/nI+MAmU5kcTANAYh9A4tBrXS5hcpFVTzlPX//geYSRcHF
         sROmdELHpLObvrTA5hdl2MoKtUui9V3lmmGYwmW/H6cUq9I/ntN0A8GXD4gJs2zjQu2j
         3Nl54S/n6rSi52+a06Fks/+JlO1rdKKm2OJwKSJ/zfKqePtW8S1Lon0+wPjulGunfYol
         YaJg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1710709174; x=1711313974; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cf/p6Euo+8IaJP/RQECGnzGoMXSp+ozHHSnI/D26ZVw=;
        b=YMC6OH8+02TUoeqRlaD8KKLogbFqBwknevYOYuvAbZ6t9Ppg+9VwbUMjxFEPVl6aqT
         NajI2t7KXiZe+mS7ApKe8W/e1Hdv8iiwmmSMFWVOOuNvW3TtLyAYYjPAwgZ1WtyUbH85
         tdbi1vrJaVVDy2+IdoXmgqFVy7huSBf68yNG0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710709174; x=1711313974;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cf/p6Euo+8IaJP/RQECGnzGoMXSp+ozHHSnI/D26ZVw=;
        b=Ko4MB92VTJEZ/tHmxtsQxRrAevJrJbO6UKU1XdG3F41fB+MuXZUZMsw0bAWUk4CHFf
         Jdk0lSp20s9tJYrbnr1G+M8P3n6eELDnqU6yG+PSn/GIqSdfhKqA8qVPkcpzxH4DxrZV
         rwATbK8CVc+pyc9C4D4l/1BA1Tu7js6pFV80vECrIMYZMTzuPbn14BFV5sdlwGhMlCPn
         LCDXmSWfeVCF/oQ830jDnepjgP8LxV2MC5OLDu30AbI65JbwM7fenh3/XhlkPWK+an9f
         Pssgvui1sStZ9bhoGDJcP1PBRk7rg9XB/bax7HXpH0EEL3jGs74X8mXGURqf8YjykI8K
         ZQNg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWbnRlGOrJ/n9WShfJ0yBQdg0sED0WAuuWgw1swSZTh7DNtEPMU+WVlCXgaMwTRPCO+gHZZPxtD9o1FUX3l6Prn3rSr2tBHorKR
X-Gm-Message-State: AOJu0YzZfmq0B7xWtrRTKJ2XsMc8Ut+kTCnxOQLcuhy5KODFul9LCERi
	qYBpbX+UE0xZfvytmmqylYzSy7fO1z+kST9lj6MkUlwEtqb+4eOKbhXDKbglELg=
X-Google-Smtp-Source: AGHT+IHxmFq0ejvuKIeTiQPSkRgrFTT4RD5AsaaULoGud9S7puObBhMaopKIdGvE3YM8pOLWJ9iLKg==
X-Received: by 2002:a4a:8402:0:b0:5a1:a762:12af with SMTP id l2-20020a4a8402000000b005a1a76212afmr8794004oog.3.1710709174261;
        Sun, 17 Mar 2024 13:59:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:929c:0:b0:5a1:e060:cd29 with SMTP id i28-20020a4a929c000000b005a1e060cd29ls3018688ooh.2.-pod-prod-01-us;
 Sun, 17 Mar 2024 13:59:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVTI7sao0YisZhmx9m1yQQM7OMINAtJ2ARADkjrV9GGa/hcUvbYI3uxoXAVwaov1nq9ywrMx/6doN5froRMRZtkbQjNjP28wKxu6uQ164Zrm69i6PU=
X-Received: by 2002:a05:6830:1d8a:b0:6e6:76c5:c0d8 with SMTP id y10-20020a0568301d8a00b006e676c5c0d8mr9035349oti.13.1710709173356;
        Sun, 17 Mar 2024 13:59:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1710709173; cv=none;
        d=google.com; s=arc-20160816;
        b=K6XMn04vn+bp8E0DCFtp4oIMvMbndEFxpNOxbF1d6U3DLXXZn/rqZPdyJ34n1WDRwz
         vLOddDUS4OvFUqn6mMciQ6SbUHUEb+r+mLEfN3y0IAbi3lIQTu/fRnbddgvzWnQPMlzB
         oBUoPBZeVEoPQCOsjhn4ixBt9h3if9DXZbizc4qHZ+/YSROUJu48Xw0LOYt3wgFT+0QS
         FAXaE0kzn8uLeU2L2TSUQ6rZv1/3cV/9KHQEaHASUUpce/MvHUaZNugxF9fi9KGZLn8A
         yWb0UuvxoUs9R5DQqBuA4w8qZbV+wmX33nID4ySCuAj+N9YuB76+tQyagLLo3miVJHEW
         LNMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=Ygce6z2z2WLwaZv+MVsctXTY0SSrgSG8EbiBkNY/QxA=;
        fh=S1iVII8LnHmSeDWH7aBMhlWFHpkLWe50Cr1LYlhgoAE=;
        b=NmNSzX6jw3DBBXlJRNvMwwTCgNlGuwwZkYk1jLfKlhH0HunyyiI4rb6QjHXIYvz4C6
         fh8PopNvINCLtJWSLc4nDM9Cz38J4+LoV7Gpo2jNR9E8rdoXRtLWzGrmFtgZmOJ/9pro
         OkI88xhiKW/oXMlXmB2D4iMf0lkuMpE/edwHYCqvYl7dAL8VQNSxx/SeDb5ZCNh5saE6
         sLjGGXdGLPgp6p6EMv/NQj8wkZBLkUwwNw7dACGHa7EkgsoIqckH4m2z1G2Cey3iIWG7
         YFfzgCRte0+MJqNm5gmJw3KFGNMHJKHGa6LHl5BNRDxU0qTcQO05rFYnYlTVw0Z5n4Ax
         qHYw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id r7-20020ad45767000000b00692d61fe966si3171373qvx.249.2024.03.17.13.59.33
        for <usb-storage@lists.one-eyed-alien.net>;
        Sun, 17 Mar 2024 13:59:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 555635 invoked by uid 1000); 17 Mar 2024 16:59:32 -0400
Date: Sun, 17 Mar 2024 16:59:32 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: xingwei lee <xrivendell7@gmail.com>
Cc: gregkh@linuxfoundation.org, usb-storage@lists.one-eyed-alien.net,
  linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
  samsun1006219@gmail.com, syzkaller-bugs@googlegroups.com
Subject: [usb-storage] Re: divide error in alauda_transport
Message-ID: <6fa0a6e9-7123-4538-8a98-660a594e72d7@rowland.harvard.edu>
References: <CABOYnLw8=VM4LxgBsrwTi3HzdvGV7cYJU=4t7MMYTnrDCaDKAQ@mail.gmail.com>
 <cc7eb13f-b61d-4a4c-8c35-394a833d5917@rowland.harvard.edu>
 <CABOYnLx1pyG3qjoB9yuRPtDcb3TRbSqTktngXhkPq9UNVd4jLg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABOYnLx1pyG3qjoB9yuRPtDcb3TRbSqTktngXhkPq9UNVd4jLg@mail.gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Sun, Mar 17, 2024 at 11:57:58PM +0800, xingwei lee wrote:
> On Mar 17, 2024, at 23:04, Alan Stern <stern@rowland.harvard.edu> wrote:
> 
> On Sun, Mar 17, 2024 at 04:31:01PM +0800, xingwei lee wrote:
> 
> Hello I found a bug in latest upstream titled "divide error in
> alauda_transport", and maybe is realted with usb.
> I comfired in the latest upstream the poc tree can trigger the issue.
> 
> If you fix this issue, please add the following tag to the commit:
> Reported-by: xingwei lee <xrivendell7@gmail.com>
> Reported-by: yue sun <samsun1006219@gmail.com>
> 
> kernel: upstream 9187210eee7d87eea37b45ea93454a88681894a4
> config: https://syzkaller.appspot.com/text?tag=KernelConfig&x=1c6662240382da2
> with KASAN enabled
> compiler: gcc (Debian 12.2.0-14) 12.2.0
> 
> divide error: 0000 [#1] PREEMPT SMP KASAN NOPTI
> CPU: 2 PID: 8229 Comm: usb-storage Not tainted 6.8.0-05202-g9187210eee7d #20
> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
> 1.16.2-1.fc38 04/01/2014
> RIP: 0010:alauda_read_data drivers/usb/storage/alauda.c:954 [inline]
> RIP: 0010:alauda_transport+0xcaf/0x3830 drivers/usb/storage/alauda.c:1184

> Hi Alan
> 
> I apply your patch in my upstream commit
> 9187210eee7d87eea37b45ea93454a88681894a4

> However, the poc still trigger the bug like below:

> [  146.141945][ T8215] divide error: 0000 [#1] PREEMPT SMP KASAN NOPTI
> [  146.143565][ T8215] CPU: 1 PID: 8215 Comm: usb-storage Not tainted
> 6.8.0-05202-g9187210eee7d-dirty #21
> [  146.145319][ T8215] Hardware name: QEMU Standard PC (i440FX + PIIX,
> 1996), BIOS 1.16.2-1.fc38 04/01/2014
> [  146.146720][ T8215] RIP: 0010:alauda_transport+0xc65/0x38b0

The line in your original bug report, alauda.c:954, was a call to 
alauda_ensure_map_for_zone(), which my patch moves to a different 
location so that a test for overflow can run first.  It's hard to tell 
whether the divide error occurs before the function call, within the 
function, or after.

Furthermore, alauda_ensure_map_for_zone() calls alauda_read_map(), and 
it's hard to tell if the divide error occurs before that function call 
or within the function.

Can you try adding some pr_info() statements to those places so we can 
determine exactly where the error occurs?  The only divisions that I see 
are by 2 or by uzonesize, which should always be nonzero.  Maybe you can 
print out the value of uzonesize so we can verify this.

Thanks,

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/6fa0a6e9-7123-4538-8a98-660a594e72d7%40rowland.harvard.edu.
