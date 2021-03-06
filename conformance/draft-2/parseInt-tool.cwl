#!/usr/bin/env cwl-runner
{
    "@context": "https://raw.githubusercontent.com/common-workflow-language/common-workflow-language/master/schemas/draft-2/cwl-context.json",
    "class": "ExpressionTool",
    "requirements": [{
      class: ExpressionEngineRequirement,
      id: "node-engine.cwl"
    }],
    "inputs": [{
        "id": "#file1",
        "type": "File",
        "loadContents": true
    }],
    "outputs": [{
        "id": "#output",
        "type": "int"
    }],
    "expression": {
        "engine": "node-engine.cwl",
        "script": "{return {'output': parseInt($job.file1.contents)};}"
    }
}
