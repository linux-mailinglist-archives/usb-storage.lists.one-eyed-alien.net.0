Return-Path: <usb-storage+bncBDJNPU5KREFBBQHV6O5QMGQEXR7Y3QY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 74567A03BA4
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 10:58:25 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-467a4f0b53bsf211276521cf.3
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 01:58:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736243904; cv=pass;
        d=google.com; s=arc-20240605;
        b=a2UITckWJpTQqK4xQGoSwfORq+3+ri7zr5qRSvAVmwnWt2N/+cMCOc0tzuW/nzYo+5
         inzmeMjfNHhTxVLmM/CnjRBGGqkG88/HC9DflEFFTIDFbb6pIL3Z67r78ABh2yy057L6
         5T9yP990jbe+5metQYYobYoatph7PDRVkFxvnphH3UlnCh0iQ9f2qh918fdoAuX2XQhL
         BU0wud7qp72obPfojFXIg9kanuqd8JIa9MgJI0xUyta2v5n1M8jXX62gZJh2LHa2ohZ/
         RHZSlZ+776zzspDpsG4YRk17Tr3khRp9rwbVjMa9U0OsCoOzQ302tDVljB5SQMKuQ1l+
         uJWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=YHDlTrKe+j02vDvqOYUVBrI50fX6VM+TJpih1+Eges4=;
        fh=1u8GR4R5Zd6Yb8pgFw3PGh2S1bGkbMhm7RI0ch8uRWo=;
        b=WKfQd9SmzONYHIJ7iND59FQlVQinmKEryBucoK9jjDKg49ApmnpcnR/EAjI95aiPtH
         46s7owPHkLrnTlNQvacYxXfzGf8hDViaZdykT+DoOMTfFfuUCqU/had8BGLAORvSvgxm
         gK/IFOSpyJoZ/ZL3SgMHr/a46mHKV+vQei9eT5H8dq3nKyh8dh3BVPChZGufYaCNWFaV
         6y2P01vOMWKmwMSHyOMj7LTDNrIuPgIORb4242yUy3iHl4SyrhrcHO3B4kKDq1fMP2t4
         cJFqkUxql+bHao+SaJM6frxKecwy4VOpgvzY/lH6TmS2qMEKxjBeLOHJDLCYK37cZAXd
         P84g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YdhHQR0M;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736243904; x=1736848704; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YHDlTrKe+j02vDvqOYUVBrI50fX6VM+TJpih1+Eges4=;
        b=PHKKjZY4m9sqKjJCErfLn8oAq8CO6b/p7Inzugpc5iOBSkLAgbwJVRHq+c6Bv0khFx
         iT1Pklg0HjRumIC8f+sJbTn7aQyi/j1RBjKx7NBW+rDqZH7sz7V22w0uuP4ABBD0alMU
         0hliT+I0omUSXC6zjQHinoG84jLOUPraMzAP4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736243904; x=1736848704;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YHDlTrKe+j02vDvqOYUVBrI50fX6VM+TJpih1+Eges4=;
        b=HJmdxu/Aj/3x00/bwlWop1T+2cWP0G/E5+mZlH5VzleyMpdbtrWx9pM/0P6GwEmuYM
         VwXQ0jt2PNlbkfFou0KXnCmYvV5uQBrEwSUHTd43gAiM4+4Uya+lIRN2l8iqx3/1BUp0
         S5OrYXCGh5rCeMcyoMg2SpLkrgcxYravRLXOIwY7AseQ9QB3nJG/F7JB2+n4wcmPJBhV
         uEYBF9wjXfjwySAe9JKWZXlrs3DxUxXgLuV2b+xuGvxsHpCuGr44HDkmR1wgqX/NGczH
         U0TBccyc+RHAuHgGpwdotmcxCieGrEztlK8k6ZvfB8o4+brRg3hvHAo55bm7jSg5Y3rU
         IYrA==
X-Forwarded-Encrypted: i=2; AJvYcCU/04hfEbcLFTydEWOvbwckibhef99sej7JqYCQ1fSYQD1o34+uweOSTEwOaMa/Eo4XiGTP5g==@lfdr.de
X-Gm-Message-State: AOJu0YxwjrTTDeOvS9DxLhoqggXZ2mFaQWzLePVyDRe7sOztL0MMkxC8
	Q3HFDbfyoZF7bl4V4pLw4FSVegNSJBAkURDiEI5Gf4gnAu5dweIRtwTTM5y9fHI=
X-Google-Smtp-Source: AGHT+IHJHuwepfeiLeppeIL+4vXK1i26mf+FwTIFdXDA1zOp2VI/8Z1lHtn7Yd/kFo5egtCQSRzuzw==
X-Received: by 2002:a05:622a:1aa4:b0:467:6e25:3f3d with SMTP id d75a77b69052e-46a4a8dcc71mr906631211cf.15.1736243904402;
        Tue, 07 Jan 2025 01:58:24 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:4709:0:b0:466:98fc:1e3f with SMTP id d75a77b69052e-46a3b15d19cls55732641cf.1.-pod-prod-04-us;
 Tue, 07 Jan 2025 01:58:23 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWAMkNEDfw7W+pMQevWYZc3YNMfuBw7Sa82vwQSzLYySzHgyAqn9bGqmH7l6NH7/SnGuffrDG6h5hf4jA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:1a9e:b0:7a9:d14f:2374 with SMTP id af79cd13be357-7b9ba7eacb9mr10264130985a.44.1736243903555;
        Tue, 07 Jan 2025 01:58:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736243903; cv=none;
        d=google.com; s=arc-20240605;
        b=EPNN9ADG1bJJ8PteKhknvQKXm8ZwdtT/nbzLemMHHCWKDAp6S07WSiiGl7TW48EAX1
         WYclNuLC/keXoywvsOiBl87m1eQQz24HA8xUW0ZepttVWjszwzikvPtMWvkeWJxgx3rr
         Q3bJlcXMXY6ruzMhbaTWi2EqalN4YMJO37+4TmRNTQvYBOzMy5Mkrew8jjnnFylmTe1Q
         FV6Pmr2E6911AUbJJTPtNN2jlUdy44KHh/8sMbR4UQSRnmvFGVpAYbKkjTb7akH6KgAo
         bKEAu0tFaEgvbuV1CTb/8/4T/HUZb/OaXYgJglurinvFWpqqpHph5UYVJ74iJOSpPK1H
         7o8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=mnKvXeaIbNLGjva3x4wq0sUWPhchXJHe05AZXqB3U8g=;
        fh=i1lazSQvwm0uMbBgjLZvsDbOHtpcdX7/txCqPFxtsys=;
        b=WN1n5VlKoS9TxGEGNy/rnmr7nUg7m9hH1orDbdZlZ3ZcDrKcB34uXjGLKaYXLL+LGS
         S0QSOOh4lzO8Te1nYLHxi7Osm+vUrvHBEbdwvtu0/c+EO3X1A2NEUXeXLz9Kg2Mk3RjT
         qdI4t4WVT1/nXeZE01Uy/mRP/2hUjToK+ncCRujBS/bn++BQ80zdwuj2QMwehdDKduip
         6iIEBhsNxxq+5/yaOLgTkap2l/Ur9VE+HF6hkW9xjnK6+Y4EMNMhEQz4qS843Qyhg4o8
         73DGpE8x175wY1//yuD7797GpCOtK7G2EEcNw8ptG0SQ5lcaaTtJogL4VgpaPzbRteQE
         mRkg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YdhHQR0M;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [2604:1380:45d1:ec00::3])
        by mx.google.com with ESMTPS id d75a77b69052e-46a3ebc5660si431465461cf.493.2025.01.07.01.58.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 01:58:23 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) client-ip=2604:1380:45d1:ec00::3;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 536B6A40DDE;
	Tue,  7 Jan 2025 09:56:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96556C4CED6;
	Tue,  7 Jan 2025 09:58:21 +0000 (UTC)
Message-ID: <28120cf8-1a6a-485c-be2b-57aeefcb9190@kernel.org>
Date: Tue, 7 Jan 2025 18:58:20 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 6/8] nvme: fix queue freeze vs limits lock order
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 nbd@other.debian.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-7-hch@lst.de>
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250107063120.1011593-7-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=YdhHQR0M;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3
 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: Damien Le Moal <dlemoal@kernel.org>
Reply-To: Damien Le Moal <dlemoal@kernel.org>
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

On 1/7/25 15:30, Christoph Hellwig wrote:
> Match the locking order used by the core block code by only freezing
> the queue after taking the limits lock.
> 
> Unlike most queue updates this does not use the
> queue_limits_commit_update_frozen helper as the nvme driver want the
> queue frozen for more than just the limits update.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/28120cf8-1a6a-485c-be2b-57aeefcb9190%40kernel.org.
