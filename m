Return-Path: <usb-storage+bncBCC2JRVCV4NRBQOM6HCAMGQELLE6JOQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x447.google.com (mail-wr1-x447.google.com [IPv6:2a00:1450:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 5986DB246F2
	for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 12:17:39 +0200 (CEST)
Received: by mail-wr1-x447.google.com with SMTP id ffacd0b85a97d-3b782c29be3sf3413589f8f.0
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 03:17:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755080258; cv=pass;
        d=google.com; s=arc-20240605;
        b=HjqmRZjq3vc/h9PObB9q5JxN7CG9LZHtuaxIYR9vFZVumNrpPPXCI2Zd/yzJVu3u/y
         m/tkivsOCglWiPJ/4hj4sfaIKJlkMQduaFZ2mX3U3KJnCP7eMzN1dFOkaaLFAqoPXEwO
         lxiKwTOBufg0UWP1lFoA3dZ+jf3Aw/absjesHRx7tfNOPnSUU0FpIRWSqzTRCPKxw4w4
         Fmjqw8IY9FKroukMfAErjAglQAJJnzzSwyXaBAy8NOtsfciDUNWedAI1fB77tKWuKK/P
         Rnl8w1IJfO4vKs8AwuZYwID+FingMsv5KtauBt1XMCedTA6zkgHdf9dJ2NeHn/3qSDaT
         d5sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id:cc:date
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=ktKrnn6fo0JmK5xBq99ECoiglOeKxVDCzvB3LBFMDHE=;
        fh=RyUUU7fY1OZNlqk3NHlEKFZaCmmLNsTIqzJ+S4Ds1Io=;
        b=jt942ffSwSKj028xs9km/R1AFcah9nt9XmfoCQ5qyCRvIXuOjd/yrYtfdZZogMc8hp
         JoXCS22z+9vOhjIQkIkQfrgIIFasWgTekPJXcXaslZ2F57hnji++aFZW/WtKcdjxCl1M
         89Zy2WWgM5n0+W18osXBOWVASixqw3JIrZfO3jqO8COCs1c/dBcBy15xGGrRklEqLdlN
         DFHb0O/Wp4lqWzir6boYox3C8C2ClWWe/EUcUqtHyRzcQ0mL+YoTx/x/I7Z2Q94Ewmm3
         qwfMQZk/mEDFwvtG3ZAMv5PTJJWwesfjpD8r3jj6oJx0y2fVMV2FnQ4ulzjL7rE7WOl5
         Q40A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=oliG3B5M;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:1004:224b::bc as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755080258; x=1755685058; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:references:message-id:cc:date:in-reply-to:from
         :subject:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ktKrnn6fo0JmK5xBq99ECoiglOeKxVDCzvB3LBFMDHE=;
        b=X40+S49CjuXg+xjj4V85bruFTawCzNwewVdsozXFZQJz5X5iT/qwzBNs9mV1KW2dr8
         pgQSLmKYWmRPE3OJ1Mhi/CqrLF5J/c6HjCd0/Ai91kCc6KJrJzGKrFK9GtybZ+AG0ak6
         mTT2OZkyeDncAKK9ZwiQFnfZgVaPAIOahcsUw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755080258; x=1755685058;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:references
         :message-id:cc:date:in-reply-to:from:subject:mime-version
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ktKrnn6fo0JmK5xBq99ECoiglOeKxVDCzvB3LBFMDHE=;
        b=GxSXD6CncoOKHNR/FyV/M0xizz057XyBaCEQmCYj2CuUm3rosabCk9WeK825VitE9T
         1bqfqQHvHBTobN/WSiiwgyeTKZtOyUWc8D/4LCBjbOiJl4sM84rqeYynqBc4j69YWw/d
         iRVcwNciPmg8eY8gsm1ynkyZDLZI3vgaKtR7YO5a1+G3E7yT+ZrzDt8dPlE639IQRNgW
         9unSMAw2wgIfuiAnYjIDreXngxZPjITYv+x6whLMJqDYdifZEH4Oog8kix91+WJjs1rb
         XdiNmEZEFkLmG9RJ1s6XArkZLZlYeFq2mAkFjGh8+l5y2b1izqaMsePCt4d5l15UTlYz
         5jXQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW00zqk8HaNre2COQDiClVGnrztHqQ+bg7AUNW1+T2Jwg+D7+yGSCq+tyEFh3fFi0g4d6py1g==@lfdr.de
X-Gm-Message-State: AOJu0YzNWVgD5wJgTIKDux5kHKdOcbppjLiRhAd+RgrPqv+/umzJXNRM
	VEYaQzgJwvuCv35hTtVR9IRTYbiAIfQ3l49YXt3cWflZF+eTAwAL96u7TTpGnLvcCt0=
X-Google-Smtp-Source: AGHT+IEJTxoYgDLK569jCpx2yV/cYjtNHC2PkZM7mXPg6qMwJ0DYE3zKWiG6kEbooEMH2YmCfU4sMA==
X-Received: by 2002:a5d:5f56:0:b0:3b7:6828:5f78 with SMTP id ffacd0b85a97d-3b917e2da18mr1602492f8f.4.1755080258520;
        Wed, 13 Aug 2025 03:17:38 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZcyq7iNd57z++us0XDIsbi4py1BhN9IpFRIg9NykbbGpg==
Received: by 2002:a05:600c:8b04:b0:43c:ed2c:bcf2 with SMTP id
 5b1f17b1804b1-459f03fb315ls35652925e9.1.-pod-prod-05-eu; Wed, 13 Aug 2025
 03:17:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWZnhPExQweYx7x1C0xl3fMxRuMr/Hofj7Rpp7SPeEYTfdCTG4LADCScrvxNVeCSPXh+0vMNRbWJJbPQg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:154f:b0:459:e3a1:a0c4 with SMTP id 5b1f17b1804b1-45a1665b4bamr23994985e9.30.1755080255870;
        Wed, 13 Aug 2025 03:17:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755080255; cv=none;
        d=google.com; s=arc-20240605;
        b=HVlV6aAmVXNDyP26eSefXvVGt6dIVVYiVeUOkdB3rwgwDIixbD2qoO60iIDH2RQ0Mv
         7egHZmxma+9tMCl11WX7iej6Lit87/PeavDPAyGi6ujkKy7Uy4hK2zQq4p8+UeY4vIa4
         NOCHQq5HGTwVL60vDFGAsascXqmDI6LQ4TzKPUKADn9BVr29GEo7h8TcMqgzrj1idwjQ
         WchasEzYNpM9e3Bsl4f5v9koXaPWcwWt7nbtjqDGtnAStRXGqTBQPlbSbKOrFv07YJk0
         xnm3HKytLdhWs3lOv+WRh54GCWmntlLSaRuhyVX4QzkLEaJWepGod5LT8kdb+SLyUg9v
         /YkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=eBogFjsAW/CzbqvTDnhDBJE6o6dXCGpP/yXDyp5i38Q=;
        fh=B7xbHsbzpr1nfc1/MaaVznvaaqc15A98N35CKO/jcR4=;
        b=a3CoWp5cdf55RDGZUxBIoB1vIS985ZOM5Wip0cV5L0FMIYlMbVpODWH30HAgw4f8ix
         DJRmVKwk+CQhhiL03fm2S68IPxjn2FLogS2mgCJgO5+Trh+xlbXm/jtNWh2Pkp2qy1Wk
         vJ7G4j+pC5VBdFlgR+wADqMoR5fBGEuM8cosKulhOX1l7HnbQ8UoHrvpbz97ki6JjoAv
         GNdGj2I4hy6rTjq6f1H1jte47LtNIfGa0CyLdA/6Ju/194rgvNzj1vGw16tuGgjwvzmA
         VA67OhsbqIzpbVcYxpGhSRQFSicgim9ATku4yyL6Vai6Rc9VTGcBR/PnR5Te99K3KwZb
         nVAQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=oliG3B5M;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:1004:224b::bc as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
Received: from out-188.mta0.migadu.com (out-188.mta0.migadu.com. [2001:41d0:1004:224b::bc])
        by mx.google.com with ESMTPS id 5b1f17b1804b1-45a16e1cb50si9920495e9.72.2025.08.13.03.17.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 03:17:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:1004:224b::bc as permitted sender) client-ip=2001:41d0:1004:224b::bc;
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Subject: Re: [usb-storage] [PATCH] usb: storage: realtek_cr: Simplify rts51x_bulk_transport()
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Thorsten Blum <thorsten.blum@linux.dev>
In-Reply-To: <49559415-4493-4b90-a9bc-c6b9074a61f6@rowland.harvard.edu>
Date: Wed, 13 Aug 2025 12:17:21 +0200
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org
Message-Id: <8AD61006-EA99-48A3-879A-49A575081F15@linux.dev>
References: <20250812144358.122154-1-thorsten.blum@linux.dev>
 <b11a19b6-9fb3-4fdc-b94e-33ff01a634b3@rowland.harvard.edu>
 <19E72C72-AFD3-4D13-8F14-9A1F96B971D3@linux.dev>
 <49559415-4493-4b90-a9bc-c6b9074a61f6@rowland.harvard.edu>
To: Alan Stern <stern@rowland.harvard.edu>
X-Migadu-Flow: FLOW_OUT
X-Original-Sender: thorsten.blum@linux.dev
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linux.dev header.s=key1 header.b=oliG3B5M;       spf=pass
 (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:1004:224b::bc
 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linux.dev
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

On 13. Aug 2025, at 03:38, Alan Stern wrote:
> If you would like to submit three new patches, please do.

I just submitted this as three separate patches:

https://lore.kernel.org/lkml/20250813101249.158270-2-thorsten.blum@linux.dev/

Thanks,
Thorsten

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/8AD61006-EA99-48A3-879A-49A575081F15%40linux.dev.
