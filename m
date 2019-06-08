Return-Path: <usb-storage+bncBDR5N7WPRQGRBBW35XTQKGQEPITS4DI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x448.google.com (mail-wr1-x448.google.com [IPv6:2a00:1450:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 2586E39BAA
	for <lists+usb-storage@lfdr.de>; Sat,  8 Jun 2019 10:10:47 +0200 (CEST)
Received: by mail-wr1-x448.google.com with SMTP id i2sf1913032wrp.12
        for <lists+usb-storage@lfdr.de>; Sat, 08 Jun 2019 01:10:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559981446; cv=pass;
        d=google.com; s=arc-20160816;
        b=vlTBuM5XSu9txYJudjJMmE7gwPY7Wm9p1Js1H2rOZLHBnK5iOPPzYakx5WLtQLZ/rl
         CbNGNiBchJqmEJ3ei8DRv9vhtaEauPACrCULNUNH2ikJijbNkNqyXO04ssvegXVdJBgz
         AuaBdc74xLBZ+9xQkzOyrf7gAo2z9HmEE3NqQIZ5LDbe8Z3RCl+MyBgGINIp0ey0D3KC
         KBs8FqFk47dEzg0C0cxgsytmX/Fo48MsIF9PCvVuOYKOzUw5ZT/9L2P5HKeYTSmWr+T8
         NQuOxaTPEpHfnTQQFaaScIbU7qpbMQypbYj5Be+DSUsJi/U51oYaEQcMC+SgDO+kKOaf
         Tf0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=WeC59g8pIm4UGzYxYG50WeAdoINTeQnOktO3K6UV6o0=;
        b=ujRsf3KPmCxxW+T8iIg601EUIXF+uBfGAv+NySxuJEx/wyrQ2G23WYa2dg1XZ5Q8bW
         3Gxklh0k8cz7dZPr2zXvSKLU8qtPbjY+eu0v+iF9QY6gu35rqrrquz8vPwy9AON1dt9G
         wUuzJ4F00KsQJd0avLo7Ch53TcyJz2+eruMFTiBeN6D99y1L5Pi8mBSWxSHpNbvF7RsE
         x+05dg/ZAhe6ql0KkaVc3dhZoqAIuCa8jCQto/D/h9l+A5hMo20QOpNCzxGgYsEpyryf
         jXM6lSJYaS0yQB8ItK+UtJFY7Ffc/76iDFi3NAflo0Bj1nnFb4JUt7tqm8lxUPWB+AHp
         Z/HQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b="pCcz/EmJ";
       spf=pass (google.com: domain of axboe@kernel.dk designates 209.85.220.65 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WeC59g8pIm4UGzYxYG50WeAdoINTeQnOktO3K6UV6o0=;
        b=E0hN9Z5ag1vfmxPX58rrroPKIc3W7JqsbeJheGbNj6leSl1efaa9h7VdrjlTJcH7S8
         LnnKsTcG/0THasXj/r1rlJ1/GOZGJ6kU8lt+3NvpvUO0FL1yppj5KOIQ6ibhmFSm0ceQ
         c4WeutO09AMP0CxgnHAiOGdyS5UCffJ3giEx8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WeC59g8pIm4UGzYxYG50WeAdoINTeQnOktO3K6UV6o0=;
        b=BTldrTLvzW2KBLaehA+8yzcRz5u9Ch16h81y67RVhqijWQXqVD7QeKzUP4/ahtm7BD
         ob3ruWoJVzsZUY3+2i1jN7GgLJm1fEi1zV6gdGukpaqL271hSboIAevoZTwqs8tv705g
         qqvvWv2SND7rHcgy5qtgs/tPdnmLWZ50TxkV7BM7THz4mlX9XnW4tB718wTn/lC26GEX
         /4LoVQltclMYr5AwawPwMlntXgjYhpcj2I512KyqwX82Yt3YI+1BeXsnkFYvAANuqaJF
         7rrXlyjMgs0OS/F13VWFwO4HdXfkFxns4tjgFpgSfjCkB8XTuhlkRFu7nhZ28fXXToOq
         mftQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXtwJekx5SqPIJW9g8iY0BiUrl96tLekbbD8VFn08daQDn6FSw9
	ftSkwZHiCeh/sRKwEK7KVez0hw==
X-Google-Smtp-Source: APXvYqwhhZfA/K9bubKYW1vdt6bSVCLZdlVOoiATw7VnVoiSHMZEZIObh/uXeUNYIB6Zh7cXeqVaTQ==
X-Received: by 2002:a5d:4141:: with SMTP id c1mr22305857wrq.159.1559981446830;
        Sat, 08 Jun 2019 01:10:46 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:bacb:: with SMTP id w11ls2547097wrg.9.gmail; Sat, 08 Jun
 2019 01:10:46 -0700 (PDT)
X-Received: by 2002:a5d:4bc7:: with SMTP id l7mr8482656wrt.96.1559981446092;
        Sat, 08 Jun 2019 01:10:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559981446; cv=none;
        d=google.com; s=arc-20160816;
        b=fJXikcQTjhmcDZV2OJOYQHLYUp1BcBKdVKWXEJAaafWN1rJsz7sC6OXcnAGPoOtrEJ
         6Kuz7Fjws0IIvBF/hp2Uq1WInOdoHxZ/rJ5g4V8FW+NSyRZZSUtjrGp97STvuOAK3RGH
         wvkXcMrAPSUwdT10mnPIZe2LAJzu/QzOd6IiizKy8M1pGUK5H+4ykwcKnNXAERJVVvn1
         lx8gD7x1wddridh+5l97iotm+M98Q7wrDbG+xYNeIqcqC+p4/ZgPa4To5jQpILiCpRVu
         WgbZ/69ZQaX2t81E8ZFzsa+gjdYKKjDolRhyDJ4Bkk555mE4LEiaI1ozrzufnp9W9CV4
         8Few==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=A/98s+ZxLWi2AxlogIx4Ijtu1jW2DrfDadsqadJKMuo=;
        b=IQ5Z7vAqW/RCJBZWyEpNkLf5LpzNcwp3ye9kDtoDvsQf7tzkUakxuzk4FdgJfYpdhf
         Fdcjxmtk+MOS7LBNjH3a6o166WN7p246+X6gaj9A/lJyu1uRHZJYk+fcTxE1ZKA28biN
         2wp0EmxkpwSV6UFjnZeeVBzKCxNBRe+NG+aNKcIXXNmXwaZmGk2SY5d4acXmiBeYCxOI
         p4xqpNlXAH8yd23MB55dnWxDw7y28dY1NR972EQYq+Z7USSPr5pSbEmKkJ35ZnDCCipR
         TAMCGEBnQk6/cbJjj5v4D876fmz6SuwFhg669RrWQkpIYxdLWGGH/1Wpex/zb9fbFh4Q
         pYmA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b="pCcz/EmJ";
       spf=pass (google.com: domain of axboe@kernel.dk designates 209.85.220.65 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id n23sor2429051wmh.8.2019.06.08.01.10.46
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 08 Jun 2019 01:10:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a1c:e715:: with SMTP id e21mr6683506wmh.16.1559981445791;
        Sat, 08 Jun 2019 01:10:45 -0700 (PDT)
Received: from [10.97.4.179] (aputeaux-682-1-82-78.w90-86.abo.wanadoo.fr. [90.86.61.78])
        by smtp.gmail.com with ESMTPSA id e17sm3849742wrt.95.2019.06.08.01.10.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Jun 2019 01:10:44 -0700 (PDT)
Subject: [usb-storage] Re: properly communicate queue limits to the DMA layer
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Christoph Hellwig <hch@lst.de>, Sebastian Ott <sebott@linux.ibm.com>,
 Sagi Grimberg <sagi@grimberg.me>, Max Gurtovoy <maxg@mellanox.com>,
 Bart Van Assche <bvanassche@acm.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, Oliver Neukum <oneukum@suse.com>,
 linux-block@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, megaraidlinux.pdl@broadcom.com,
 MPT-FusionLinux.pdl@broadcom.com, linux-hyperv@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org
References: <20190605190836.32354-1-hch@lst.de>
 <591cfa1e-fecb-7d00-c855-3b9eb8eb8a2a@kernel.dk>
 <20190605192405.GA18243@lst.de>
 <f07d0abf-b3eb-f530-37b9-e66454740b3f@kernel.dk> <yq1o939i9qh.fsf@oracle.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <379c82a1-f61d-7463-791e-57f1cdeaa9db@kernel.dk>
Date: Sat, 8 Jun 2019 02:10:44 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <yq1o939i9qh.fsf@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b="pCcz/EmJ";       spf=pass (google.com: domain of axboe@kernel.dk
 designates 209.85.220.65 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 6/7/19 11:30 AM, Martin K. Petersen wrote:
> 
> Jens,
> 
>>> The SCSI bits will need a bit more review, and possibly tweaking
>>> fo megaraid and mpt3sas.  But they are really independent of the
>>> other patches, so maybe skip them for now and leave them for Martin
>>> to deal with.
>>
>> I dropped the SCSI bits.
> 
> I'll monitor and merge them.

Great, thanks Martin.

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/379c82a1-f61d-7463-791e-57f1cdeaa9db%40kernel.dk.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
